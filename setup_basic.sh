# install brew
echo "\033[0;34mInstalling brew...\033[0m"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install fish
echo "\033[0;34mInstalling fish...\033[0m"
brew install fish

# install omf
echo "\033[0;34mInstalling omf...\033[0m"
curl -L https://get.oh-my.fish | fish
