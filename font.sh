# https://www.marksimonson.com/fonts/view/anonymous-pro
# via https://kinsta.com/blog/best-programming-fonts/#11-anonymous-pro
mkdir -p ~/.fonts
pushd ~/.fonts
wget https://www.marksimonson.com/assets/content/fonts/AnonymousPro-1_002.zip
unzip AnonymousPro-1_002.zip
ln -s AnonymousPro-1_002*/*.ttf .
sudo fc-cache -f
