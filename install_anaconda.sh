wget https://repo.anaconda.com/archive/Anaconda3-5.3.0-Linux-x86_64.sh
bash Anaconda3-5.3.0-Linux-x86_64.sh
rm Anaconda3-5.3.0-Linux-x86_64.sh
echo 'export PATH="~/anaconda/bin:$PATH"' >> ~/.bashr
source .bashrc
conda update conda
