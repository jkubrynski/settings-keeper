set -x JAVA_HOME /home/devel/tools/java/current
set -x PATH $JAVA_HOME/bin $PATH
set -x TERM xterm-256color
if status --is-interactive
    command fortune -s | cowsay -f dragon-and-cow
end

set -g -x fish_greeting ''

alias findn "find . -name"
alias p "cd /home/devel/projects"
alias t "cd /home/devel/tools"
alias d "cd ~/Downloads"

set -g __fish_git_prompt_show_informative_status 1

set -g __fish_git_prompt_showcolorhints 1

set -g __fish_git_prompt_color_branch magenta bold
set -g __fish_git_prompt_showupstream "informative"
set -g __fish_git_prompt_char_upstream_ahead "↑"
set -g __fish_git_prompt_char_upstream_behind "↓"
set -g __fish_git_prompt_char_upstream_prefix ""

set -g __fish_git_prompt_char_stagedstate "●"
set -g __fish_git_prompt_char_dirtystate "✚"
set -g __fish_git_prompt_char_untrackedfiles "…"
set -g __fish_git_prompt_char_conflictedstate "✖"
set -g __fish_git_prompt_char_cleanstate "✔"

set -g __fish_git_prompt_color_dirtystate blue
set -g __fish_git_prompt_color_stagedstate yellow
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
set -g __fish_git_prompt_color_cleanstate green bold
