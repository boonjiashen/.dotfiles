#!/usr/bin/env zsh

set -e

INSTALL_BASEDIR="$( git rev-parse --show-toplevel )/.install"

function sync-git-repo {
  # Tries to idempotently sync a remote git repo to a local one
  REMOTE_URL=$1
  LOCAL_DIR=$2

  if [ -d "${LOCAL_DIR}" ]
    then
      cd "${LOCAL_DIR}"
      git pull
      cd -
    else
      git clone --depth 1 "${REMOTE_URL}" "${LOCAL_DIR}"
  fi
}

FZF_GIT_INSTALL_DIR="${INSTALL_BASEDIR}/fzf-git.sh.git"
sync-git-repo https://github.com/junegunn/fzf-git.sh.git "${FZF_GIT_INSTALL_DIR}"
