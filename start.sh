# This is a starter file for this repo, commands added manually.
# WONTFIX: add environment config to container on start 
#          as in https://aka.ms/configure-codespace
conda install -c conda-forge just
pip install update git+https://github.com/vberlier/mudkip.git
pip install ghp-import

# Install tons of latex:
sudo apt-get install texlive-latex-base
# Also install the recommended and extra fonts to avoid running into the error [1],
# when trying to use pdflatex on latex files with more fonts.
sudo apt-get install texlive-fonts-recommended
sudo apt-get install texlive-fonts-extra

# Install the extra packages
sudo apt-get install texlive-latex-extra

# Hope it installs Russian for babel
sudo apt-get install texlive-lang-cyrillic 
