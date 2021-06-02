# update
sudo apt-get update

# git Setting
git config --global user.name craig.starr && \
git config --global user.email craig.starr@kakaobrain.com

# vim Setting
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && sudo apt-get install ctags && cd ~ && rm -rf setup.env && git clone https://github.com/nashory/setup.env.git && cp setup.env/vimrc ~/.vimrc && vim -E -s -u "~/.vimrc" +PlugInstall +qall

# tmux Setting
sudo apt-get install -y tmux cmake && cp -r ~/setup.env/tmux-config ~/.tmux && unlink ~/.tmux.conf && ln -s ~/.tmux/.tmux.conf ~/.tmux.conf && cd ~/.tmux && git submodule init && git submodule update && cd ~/.tmux/vendor/tmux-mem-cpu-load && mkdir -p build && cd build && cmake .. && sudo make install && cd ~ && tmux source-file ~/.tmux.conf
