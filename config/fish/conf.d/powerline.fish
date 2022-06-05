set PATH $PATH "$HOME/.local/bin"

if not which pip3;
    wget -q https://bootstrap.pypa.io/get-pip.py -O- | python3
end

if not pip3 list --disable-pip-version-check | grep powerline-status >/dev/null;                                                                                                                                                                     
    pip3 install powerline-status
end

powerline-daemon -q

set repository_root (pip3 show powerline-status | grep Location | cut -d ":" -f 2 | xargs)
set fish_function_path $fish_function_path "$repository_root/powerline/bindings/fish"
fish_key_bindings=fish_default_key_bindings powerline-setup
