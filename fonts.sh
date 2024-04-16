#!env bash

mkdir -p ~/.fonts
pushd ~/.fonts

# https://www.marksimonson.com/fonts/view/anonymous-pro
# via https://kinsta.com/blog/best-programming-fonts/#11-anonymous-pro
#[ -f AnonymousPro-1_002.zip ] ||
    #wget --continue https://www.marksimonson.com/assets/content/fonts/AnonymousPro-1_002.zip

# https://fonts.google.com/specimen/Nanum+Gothic+Coding?classification=Monospace&subset=korean&noto.script=Kore
[ -f ~/Downloads/Nanum_Gothic_Coding.zip ] && mv ~/Downloads/Nanum_Gothic_Coding.zip .

# https://www.jetbrains.com/lp/mono/
# via https://clearleft.com/thinking/some-of-the-best-free-fonts
wget --continue https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip

for name in $(basename --suffix=.zip *.zip)
do
    mkdir -p "$name"
    pushd "$name"
    unzip -u "../${name}.zip"
    popd
done

find $(realpath .) -name \*.ttf -type f -print0 |
    xargs -0t -I II ln -sf II .

sudo fc-cache -f

popd
