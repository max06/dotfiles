set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"

powerline-daemon -q
fish_key_bindings=fish_default_key_bindings powerline-setup
