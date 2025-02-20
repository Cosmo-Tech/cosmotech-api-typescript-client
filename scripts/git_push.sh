#!/bin/bash
# ref: https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/
#
# Export GIT_TOKEN for automatic login
# Usage example: ./git_push.sh slashme Cosmo-Tech cosmotech-api-java-client "minor update" "github.com"
set -e

git_user_id=$1
git_organization_id=$2
git_repo_id=$3
release_note=$4
git_host=$5

if [ "$git_host" = "" ]; then
    git_host="${GIT_HOST:-}"
    if [ "$git_host" = "" ]; then
        git_host="github.com"
    fi
    echo "[INFO] No command line input provided. Set \$git_host to $git_host"
fi

if [ "$git_user_id" = "" ]; then
    git_user_id="${GIT_USER_ID:-}"
    echo "[INFO] No command line input provided. Set \$git_user_id to $git_user_id"
fi

if [ "$git_organization_id" = "" ]; then
    git_organization_id="${GIT_ORGANIZATION_ID:-}"
    echo "[INFO] No command line input provided. Set \$git_organization_id to $git_organization_id"
fi

if [ "$git_repo_id" = "" ]; then
    git_repo_id="${GIT_REPO_ID:-}"
    echo "[INFO] No command line input provided. Set \$git_repo_id to $git_repo_id"
fi

if [ "$release_note" = "" ]; then
    release_note="${GIT_RELEASE_NOTE:-}"
    if [ "$release_note" = "" ]; then
        release_note="Minor update"
    fi
    echo "[INFO] No command line input provided. Set \$release_note to $release_note"
fi

CURRENT_SCRIPT_DIR=$(realpath "$(dirname "$0")")

# Create the release directory
WORKING_DIR=$(mktemp -d -t "${cosmotech-api-$3}-XXXXXXXXXX")
echo "WORKING_DIR: ${WORKING_DIR}"

# Sets the new remote URI
if [ "$GIT_TOKEN" = "" ]; then
    echo "[INFO] \$GIT_TOKEN (environment variable) is not set. Using the git credential in your environment."
    github_uri="https://${git_user_id}@${git_host}/${git_organization_id}/${git_repo_id}.git"
else
    github_uri="https://${git_user_id}:${GIT_TOKEN}@${git_host}/${git_organization_id}/${git_repo_id}.git"
fi

# Clone remote repository
git clone "${github_uri}" "${WORKING_DIR}"
# Delete all files to remove renamed or deleted files
echo "Deleting everything under ${WORKING_DIR}..."
rm -rf "${WORKING_DIR:?}/*"

# Adds the files in the local repository
GENERATED_SOURCES_DIR=$(realpath "${CURRENT_SCRIPT_DIR}/..")
echo "Copy everything from ${GENERATED_SOURCES_DIR} to ${WORKING_DIR}..."
cp -r "${GENERATED_SOURCES_DIR}"/. "${WORKING_DIR:?}"/

pushd "${WORKING_DIR}" || exit 1

git status

# Stages the new files for commit.
git add --all .

git status

if [[ $(git status --porcelain) ]]; then

  if [[ -f "${GIT_COMMIT_MESSAGE_FILE:-}" ]]; then
    git commit -F "${GIT_COMMIT_MESSAGE_FILE}"
  else
    git commit -m "$release_note"
  fi

  # Pushes the changes in the local repository up to the remote repository
  echo "Git pushing to https://${git_host}/${git_organization_id}/${git_repo_id}.git"
  git pull --rebase
  git push origin master 2>&1 | grep -v 'To https'
fi

popd

rm -rf "${WORKING_DIR:?}" || exit 0
