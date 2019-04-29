echo "++++++++++++++++++++++++++++++++++	"
echo "Installing Hugo"
echo "++++++++++++++++++++++++++++++++++	"
echo ""
wget https://github.com/gohugoio/hugo/releases/download/v0.54.0/hugo_0.54.0_Linux-64bit.deb
sudo dpkg -i hugo_0.54.0_Linux-64bit.deb
sudo rm hugo_0.54.0_Linux-64bit.deb
sudo hugo version
