# install brew
echo "\033[0;34mInstalling brew...\033[0m"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install fish
echo "\033[0;34mInstalling fish...\033[0m"
brew install fish

# install omf
echo "\033[0;34mInstalling omf...\033[0m"
curl -L https://get.oh-my.fish | fish
