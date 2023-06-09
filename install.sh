#!/bin/sh
#
# Usage:
#
#    sh install.sh
#
# Environment variables: VERBOSE, CP, LN, MKDIR, RM, DIRNAME.
#
#    env VERBOSE=1 sh install.sh
#
# DO NOT EDIT THIS FILE
# 
# This file is generated by rcm(7) as:
#
#   rcup -B 0 -g
#
# To update it, re-run the above command.
#
: ${VERBOSE:=0}
: ${CP:=/bin/cp}
: ${LN:=/bin/ln}
: ${MKDIR:=/bin/mkdir}
: ${RM:=/bin/rm}
: ${DIRNAME:=/usr/bin/dirname}
verbose() {
  if [ "$VERBOSE" -gt 0 ]; then
    echo "$@"
  fi
}
handle_file_cp() {
  if [ -e "$2" ]; then
    printf "%s " "overwrite $2? [yN]"
    read overwrite
    case "$overwrite" in
      y)
        $RM -rf "$2"
        ;;
      *)
        echo "skipping $2"
        return
        ;;
    esac
  fi
  verbose "'$1' -> '$2'"
  $MKDIR -p "$($DIRNAME "$2")"
  $CP -R "$1" "$2"
}
handle_file_ln() {
  if [ -e "$2" ]; then
    printf "%s " "overwrite $2? [yN]"
    read overwrite
    case "$overwrite" in
      y)
        $RM -rf "$2"
        ;;
      *)
        echo "skipping $2"
        return
        ;;
    esac
  fi
  verbose "'$1' -> '$2'"
  $MKDIR -p "$($DIRNAME "$2")"
  $LN -sf "$1" "$2"
}
handle_file_ln "/Users/jroff/.dotfiles/aliases" "/Users/jroff/.aliases"
handle_file_ln "/Users/jroff/.dotfiles/bin/git-current-branch" "/Users/jroff/.bin/git-current-branch"
handle_file_ln "/Users/jroff/.dotfiles/config/nvim/after/plugin/colors.lua" "/Users/jroff/.config/nvim/after/plugin/colors.lua"
handle_file_ln "/Users/jroff/.dotfiles/config/nvim/after/plugin/fugitive.lua" "/Users/jroff/.config/nvim/after/plugin/fugitive.lua"
handle_file_ln "/Users/jroff/.dotfiles/config/nvim/after/plugin/harpoon.lua" "/Users/jroff/.config/nvim/after/plugin/harpoon.lua"
handle_file_ln "/Users/jroff/.dotfiles/config/nvim/after/plugin/lsp.lua" "/Users/jroff/.config/nvim/after/plugin/lsp.lua"
handle_file_ln "/Users/jroff/.dotfiles/config/nvim/after/plugin/statusline.lua" "/Users/jroff/.config/nvim/after/plugin/statusline.lua"
handle_file_ln "/Users/jroff/.dotfiles/config/nvim/after/plugin/telescope.lua" "/Users/jroff/.config/nvim/after/plugin/telescope.lua"
handle_file_ln "/Users/jroff/.dotfiles/config/nvim/after/plugin/treesitter.lua" "/Users/jroff/.config/nvim/after/plugin/treesitter.lua"
handle_file_ln "/Users/jroff/.dotfiles/config/nvim/init.lua" "/Users/jroff/.config/nvim/init.lua"
handle_file_ln "/Users/jroff/.dotfiles/config/nvim/init.vim.old" "/Users/jroff/.config/nvim/init.vim.old"
handle_file_ln "/Users/jroff/.dotfiles/config/nvim/lua/sprial404/init.lua" "/Users/jroff/.config/nvim/lua/sprial404/init.lua"
handle_file_ln "/Users/jroff/.dotfiles/config/nvim/lua/sprial404/packer.lua" "/Users/jroff/.config/nvim/lua/sprial404/packer.lua"
handle_file_ln "/Users/jroff/.dotfiles/config/nvim/lua/sprial404/remap.lua" "/Users/jroff/.config/nvim/lua/sprial404/remap.lua"
handle_file_ln "/Users/jroff/.dotfiles/config/nvim/lua/sprial404/set.lua" "/Users/jroff/.config/nvim/lua/sprial404/set.lua"
handle_file_ln "/Users/jroff/.dotfiles/config/nvim/plugin/packer_compiled.lua" "/Users/jroff/.config/nvim/plugin/packer_compiled.lua"
handle_file_ln "/Users/jroff/.dotfiles/gitconfig" "/Users/jroff/.gitconfig"
handle_file_ln "/Users/jroff/.dotfiles/gitignore" "/Users/jroff/.gitignore"
handle_file_ln "/Users/jroff/.dotfiles/gitmessage" "/Users/jroff/.gitmessage"
handle_file_ln "/Users/jroff/.dotfiles/install.sh" "/Users/jroff/.install.sh"
handle_file_ln "/Users/jroff/.dotfiles/tmux.conf" "/Users/jroff/.tmux.conf"
handle_file_ln "/Users/jroff/.dotfiles/zprofile" "/Users/jroff/.zprofile"
handle_file_ln "/Users/jroff/.dotfiles/zshenv" "/Users/jroff/.zshenv"
