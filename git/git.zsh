INSTALL_BASEDIR="$( git rev-parse --show-toplevel )/.install"

FZF_GIT_SRC="${INSTALL_BASEDIR}/fzf-git.sh.git/fzf-git.sh"
[ -f "${FZF_GIT_SRC}" ] && source "${FZF_GIT_SRC}"
