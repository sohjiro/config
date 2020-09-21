# install brew
echo "\033[0;34mInstalling brew...\033[0m"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install fish
echo "\033[0;34mInstalling fish...\033[0m"
brew install fish

# install omf
echo "\033[0;34mInstalling omf...\033[0m"
curl -L https://get.oh-my.fish | fish


OMF_TOOLS=(robbyrussell cbjohnson asdf sdk)
echo "\033[0;34mThe following OMF tools will be installed: \033[37m${OMF_TOOLS[@]}...\033[0m"

for TOOL in "${OMF_TOOLS[@]}"
do
  echo "\033[31;1m$TOOL \033[0;34minstalled..."
  fish -c "omf install $TOOL"
done

ASDF_PLUGINS=(tmux erlang elixir rebar nodejs rebar rust)
echo "\033[0;34mThe following ASDF plugins will be installed: \033[37m${ASDF_PLUGINS[@]}...\033[0m"

for PLUGIN in "${ASDF_PLUGINS[@]}"
do
  echo "\033[0;34mInstalling plugin: \033[37m$PLUGIN...\033[0m"
  fish -c "asdf plugin add $PLUGIN"
done

# brew install tools
echo "\033[0;34mInstalling \033[37mcoreutils and more\033[0m"
brew install coreutils automake autoconf openssl libyaml readline libxslt libtool unixodbc unzip curl

echo "\033[0;34mInstalling \033[37mtmux\033[0m"
brew install tmux

echo "\033[0;34mInstalling \033[37mhttpie\033[0m"
brew install httpie
# brew install jq

echo "\033[0;34mInstalling \033[37mwxwidgets\033[0m"
brew install wxwidgets

echo "\033[0;34mInstalling \033[37mgit-secret\033[0m"
brew install git-secret

echo "\033[0;34mInstalling \033[37mxpdf\033[0m"
brew install xpdf

echo "\033[0;34mInstalling \033[37mjava 10.0.2-zulu\033[0m"
fish -c "sdk install \033[37mjava 10.0.2-zulu"

echo "\033[0;34mInstalling \033[37merlang 22.2.8\033[0m"
fish -c "asdf install erlang 22.2.8"

echo "\033[0;34mInstalling elixir 1.10.4\033[0m"
fish -c "asdf install elixir 1.10.4"

echo "\033[0;34mInstalling vim configuration\033[0m"
curl -L https://raw.githubusercontent.com/sohjiro/.vim/master/run_config.sh | sh

echo "\033[0;34mAdding vim files config\033[0m"
ln -s ~/config/vim/* ~/.vim/custom/

echo "\033[0;34mAdding tmux config\033[0m"
ln -s ~/config/tmux/tmux.conf ~/.tmux.conf

echo "\033[0;34mAdding gitconfig config\033[0m"
ln -s ~/config/git/gitconfig ~/.gitconfig

echo "\033[0;34mAdding git_alias for fish \033[0m"
ln -s ~/config/fish/conf.d/git_alias.fish ~/.config/fish/conf.d/

echo "\033[0;34mAdding config.fish \033[0m"
ln -s ~/config/fish/config.fish ~/.config/fish/


