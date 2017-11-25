## vimrc
---

My vimrc settings and custom configurations.

## Setup

    make install
    # make uninstall

## Manual setup

Set up custom configuration (this repo):

    git clone https://github.com/desyncr/vimrc.git $HOME/.vim
    ln -s $HOME/.vim/vimrc.vim ~/.vimrc
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Vundles

- tpope/vim-fugitive
- ctrlpvim/ctrlp.vim -- Ctrl+p
- scrooloose/nerdtree -- n (normal mode)
- mileszs/ack.vim -- :Ack

# Mappings

- \<leader\>+{h,j,k,l} move x split/window
- tab move next split/window
- {s,S} create v/h split
- T create new tab
- . tabnext
- \<leader\>\<leader\> Switch between the splits
- n NERDTreeToggle
- q Quit split/window
- Q Quit tab

## Feedback

If you'd like to contribute to the project or file a bug or feature request, please visit [the project page][1].

## License

The project is licensed under the [GNU GPL v3][2] ([tldr][3]) license. Which means you're allowed to copy, edit, change, hack, use all or any part of this project *as long* as all of the changes and contributions remains under the same terms and conditions.

  [1]: https://github.com/desyncr/vimrc/
  [2]: http://www.gnu.org/licenses/gpl.html
  [3]: http://www.tldrlegal.com/license/gnu-general-public-license-v3-(gpl-3)
