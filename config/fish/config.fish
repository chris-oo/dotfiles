if status is-interactive
    # Commands to run in interactive sessions can go here
    # maybe jump?
    starship init fish | source

    # Check if the current arch is x86_64
    if test (uname -m) = "x86_64"
        # Set the cargo build target to x86_64-unknown-linux-gnu
        set -x CARGO_BUILD_TARGET x86_64-unknown-linux-gnu
    end

    # Check if the current arch is aarch64
    if test (uname -m) = "aarch64"
        # Set the cargo build target to aarch64-unknown-linux-gnu
        set -x CARGO_BUILD_TARGET aarch64-unknown-linux-gnu
    end
end

# Fish syntax highlighting
set -g fish_color_autosuggestion '555'  'brblack'
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape 'bryellow'  '--bold'
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match 'bryellow'  '--background=brblack'
set -g fish_color_selection 'white'  '--bold'  '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline

fish_add_path $HOME/.cargo/bin

alias uh="./uh.sh"