if status is-interactive
    # Commands to run in interactive sessions can go here
    string match -q "$TERM_PROGRAM" "vscode"
    and . (code --locate-shell-integration-path fish)
end
