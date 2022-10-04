if status is-interactive
    # Commands to run in interactive sessions can go here
    string match -q "$TERM_PROGRAM" "vscode"
    and . /vscode/vscode-server/bin/linux-x64/74b1f979648cc44d385a2286793c226e611f59e7/out/vs/workbench/contrib/terminal/browser/media/shellIntegration.fish
    # (code --locate-shell-integration-path fish)
end
