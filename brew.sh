#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg2

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Prep for Cask installs
brew tap caskroom/cask

# Core cask installs
# brew cask install 1password
brew cask install alfred
brew cask install amazon-music
brew cask install audio-hijack
brew cask install caffeine
brew cask install calibre
brew cask install discord
brew cask install disk-inventory-x
# brew cask install duet
# brew cask install evernote
brew cask install fission
brew cask install gog-galaxy
brew cask install google-chrome
brew cask install mkvtoolnix
brew cask install openemu
# brew cask install plex -- not sure which cask
brew cask install private-internet-access
brew cask install qbittorrent
brew cask install simple-comic
brew cask install slack
brew cask install steam
# brew cask install spotify
brew cask install tor-browser
brew cask install the-unarchiver
brew cask install vlc

# Development-related tools
brew cask install amazon-workspaces
brew cask install iterm2
brew cask install sourcetree
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install visual-studio-code

# Misc installs
brew cask install battle-net

# Remove outdated versions from the cellar.
brew cleanup
