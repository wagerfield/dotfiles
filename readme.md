# dotfiles

1. Install [Homebrew](https://brew.sh):

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

2. Install [oh-my-zsh](https://ohmyz.sh):

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

3. Install [NVM (Node Version Manager)](https://github.com/nvm-sh/nvm#readme):

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh)"

4. Install [Node](https://nodejs.org) via NVM:

    nvm install node

5. Install [Bun](https://bun.sh):

    curl -fsSL https://bun.sh/install | bash

6. Clone `dotfiles` repository:

    git clone https://github.com/wagerfield/dotfiles.git && cd dotfiles

7. Install `brew` packages and casks:

    brew bundle

8. Stow directories to `$HOME` directory:

    stow git oh-my-zsh zed zsh --target $HOME

## Brew Commands

| Command                          | Description                      |
| -------------------------------- | -------------------------------- |
| `brew help`                      | View `brew` commands             |
| `brew update`                    | Update `brew`                    |
| `brew doctor`                    | Check `brew` installation        |
| `brew cleanup`                   | Cleanup `brew` packages          |
| `brew outdated`                  | List outdated `brew` packages    |
| `brew upgrade`                   | Upgrade outdated `brew` packages |
| `brew tap`                       | List `brew` taps                 |
| `brew list`                      | List `brew` packages             |
| `brew (un)install <package>`     | (Un)install `brew` package       |
| `brew (un)install --cask <cask>` | (Un)install `brew` cask          |
