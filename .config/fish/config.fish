neofetch
set fish_greeting ""
set -gx TERM xterm-256color
# Aliases

alias grep "grep --color=auto"
alias cat "ccat -G Plaintext="blink" -G Keyword="purple" -G String="darkgreen" -G Punctuation="brown" -G Comment="faint""
alias ls "exa --group-directories-first -l -g --icons"
alias tree "exa -l -T --level=2 -a --icons"
alias n "nvim"
alias dotfiles "dotbare"
alias dotfiles "git --git-dir $HOME/.dotfiles/ --work-tree $HOME"
alias fzf "fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"

# Agnoster

#set -g theme_display_user yes
#set -g theme_hide_hostname no
#set -g color_user_bg magenta
#set -g color_user_str black

# Spacefish

#set SPACEFISH_PROMPT_ADD_NEWLINE false
#set SPACEFISH_PROMPT_PREFIXES_SHOW false
#set SPACEFISH_PROMPT_DEFAULT_PREFIX " "
#set SPACEFISH_PROMPT_DEFAULT_SUFFIX " "
#set SPACEFISH_USER_SHOW always
#set SPACEFISH_USER_COLOR green
#set SPACEFISH_HOST_SHOW always
#set SPACEFISH_PROMPT_ORDER time user host dir git package node ruby golang php rust haskell julia elixir docker aws venv conda pyenv dotnet kubecontext exec_time line_sep battery vi_mode jobs exit_code char 
#set -g theme_nerd_fonts yes
#
# Bobthefish
#set -g theme_color_scheme  dracula
set -g theme_color_scheme  solarized-dark
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_date_format "+%a %H:%M"
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always


# NodeJS
set -gx PATH node_modules/.bin $PATH

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end
