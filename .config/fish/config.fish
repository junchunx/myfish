# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish/oh-my-fish

# Theme
set fish_theme l


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
set fish_plugins pyenv

# Path to your custom folder (default path is $FISH/custom)
set fish_custom (dirname $fish_function_path[1])/custom $FISH/custom

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

