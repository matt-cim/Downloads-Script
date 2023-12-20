# Mac OS Script for downloading apps
This bash script (**setupScript.sh**) is useful for downloading multiple apps at once by simply running a script via the command line. 
This script can be used during onboarding processes at companies when a new user receives a computer and is extremly versatile as it 
supports **hundreds** of downloadable apps/softwares. See https://formulae.brew.sh/cask/ for the full list of downloadable apps/softwares

This script starts by checking if the user has Homebrew installed; a package management system that simplifies the installation of software on macOS. If the user does not have Homebrew installed, the script downloads it and then downloads all the necessary packages and installs the latest updates. Following this, the specified apps are then installed. Note if you wanted to alter what apps were to be installed/uninstalled you would simply edit the "CASKS" field with the appropriate name of the app/software you want to install/uninstall which can be found in the link above.
