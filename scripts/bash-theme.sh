#!/bin/bash
#
# Agnoster theme for bash
#

# Fonts
git clone https://github.com/powerline/fonts.git $HOME/fonts 
cd fonts && ./install.sh && rm -r $HOME/fonts

# Copy repo
rm -rf $HOME/.bash/themes/agnoster-bash
mkdir -p $HOME/.bash/themes/agnoster-bash
cd $HOME/.bash/themes/agnoster-bash && git clone https://github.com/speedenator/agnoster-bash.git .

# Add to .bashrc
if grep -q "agnoster.bash" $HOME/.bashrc; then
  echo "Agnosther theme is already installed."
else
  cat << 'EOF' >> $HOME/.bashrc
export THEME=$HOME/.bash/themes/agnoster-bash/agnoster.bash
if [[ -f $THEME ]]; then
    export DEFAULT_USER=`whoami`
    source $THEME
fi
EOF

fi
