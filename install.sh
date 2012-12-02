# Okay, let's get in the right directory here.
pushd ~/.vim

# Get our environment set up properly.
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/undo
mkdir -p ~/.vim/swap

# Link our configuration files to the correct place
ln -sf ~/.vim/vimrc ~/.vimrc
ln -sf ~/.vim/gvimrc ~/.gvimrc

# Update Vundle and install bundles
git submodule update --init
vim +BundleInstall +qall

# And finally let's put the user back where they were
popd
