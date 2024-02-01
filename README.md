# How to setup

Symbolic link:
ln -fs /Users/eketheeswaran/Documents/projets/dotfiles/.vimrc ~/.vimrc

Open .vimrc : `vi .vimrc`. It installs all the plugins.
Close it then re-open , use command `:PromptlineSnapshot! .shell_prompt.sh airline`

Open Iterm2, In Preferences/Profile/Colors/Color Presets/import
Look for `grubox-dark.itermcolors`. If not find, try import, and find the file in the folder.

Go look for font : `https://github.com/powerline/fonts/blob/master/RobotoMono/Roboto%20Mono%20for%20Powerline.ttf`. Install it.
In Iterm2, in Preferences/Profile/Text/Change Font/, find Roboto Mono for powerline.

ln -fs /Users/eketheeswaran/Documents/projets/dotfiles/.bashrc ~/.bashrc
ln -fs /Users/eketheeswaran/Documents/projets/dotfiles/.bash_profile ~/.bash_profile
