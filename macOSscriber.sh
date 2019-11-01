echo "This Program May Not Work as Intended as It is in Early Access, Do You Still Want to Run It?"
read -r -p "[Y/n] " input

case $input in
    [yY][eE][sS]|[yY])
 echo "Yes"
 ;;
    [nN][oO]|[nN])
 echo "No"
 exit
       ;;
    *)
 echo "Invalid input..."
 exit 1
 ;;
esac
read -r -p "Would You Like to See the Readme First? [Y/n] " input

case $input in
    [yY][eE][sS]|[yY])
 echo "Yes"
 echo "THIS PROGRAM WAS CREATED BY IRISTOTIS. WMMVYCOMPUTERS.WEEBLY.COM."
 echo "=============================================="
 echo "//Please Note This App is in EARLY ACCESS, Features May Be Non-functional."
 echo "How To Use:"
 echo "1. Run This App Once."
 echo "2. When You Get to 'Are You Sure You Want to Create a USB Drive' Select 'n'"
 echo "3. Place Your macOS Yosemite/El Capitan/High Sierra Installer(s) in /Documents/macOSscriber"
 echo "4. Use Disk Utility and Create a USB Drive in JHFS+ Called 'macinstaller'"
 echo "5. Run the App again and select 'y' to the OS You Would Like to Create an Installer Of."
 echo "6. Wait for Program to Finish, It will exit on it's own."
 echo "Please Leave Any Feedback with 'report bugs' on the Download Page."
 echo "CREATED BY: Iristotis."
 sleep 5
 ;;
    [nN][oO]|[nN])
 echo "No"
       ;;
    *)
 echo "Invalid input..."
 exit 1
 ;;
esac
cd ~/
cd Documents
mkdir macOSscriber
cd macOSscriber
echo "Please Note That to Create Any USB Drive You Need a Disk Called 'macinstaller' Mounted."
sleep 5
read -r -p "Are You Sure You Want to Create a USB Drive? [Y/n] " input

case $input in
    [yY][eE][sS]|[yY])
 echo "Yes"
 ;;
    [nN][oO]|[nN])
 echo "No"
 exit
       ;;
    *)
 echo "Invalid input..."
 exit 1
 ;;
esac
read -r -p "Do You Want to Create a Yosemite USB Drive? [Y/n] " input

case $input in
    [yY][eE][sS]|[yY])
 echo "Yes"
 echo "Attempting to Create a Bootable USB Drive of Yosemite..."
 sleep 5
 sudo chmod u+x /Install\ OS\ X\ Yosemite.app/Contents/Resources/createinstallmedia
 sudo /Install\ OS\ X\ Yosemite.app/Contents/Resources/createinstallmedia --volume /Volumes/macinstaller --applicationpath /Documents/macOSscriber/Install\ OS\ X\ Yosemite.app --nointeraction
 ;;
    [nN][oO]|[nN])
 echo "No"
       ;;
    *)
 echo "Invalid input..."
 ;;
esac
read -r -p "Do You Want to Create a El Capitan USB Drive? [Y/n] " input

case $input in
    [yY][eE][sS]|[yY])
 echo "Yes"
 echo "Attemping to Create a Bootable USB Drive of El Capitan..."
 sleep 5
 sudo chmod u+x /Install\ OS\ X\ El\ Capitan.app/Contents/Resources/createinstallmedia
 sudo /Install\ OS\ X\ El\ Capitan.app/Contents/Resources/createinstallmedia --volume /Volumes/macinstaller --applicationpath /Documents/macOSscriber/Install\ OS\ X\ El\ Capitan.app --nointeraction
 ;;
    [nN][oO]|[nN])
 echo "No"
       ;;
    *)
 echo "Invalid input..."
 ;;
esac
read -r -p "Do You Want to Create a High Sierra USB Drive? [Y/n] " input

case $input in
    [yY][eE][sS]|[yY])
 echo "Yes"
 echo "Attempting to Create a Bootable USB Drive of High Sierra..."
 sleep 5
 sudo chmod u+x /Install\ macOS\ High\ Sierra.app/Contents/Resources/createinstallmedia
 sudo /Install\ macOS\ High\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/macinstaller --applicationpath /Documents/macOSscriber/Install\ macOS\ High\ Sierra.app --nointeraction
 ;;
    [nN][oO]|[nN])
 echo "No"
       ;;
    *)
 echo "Invalid input..."
 ;;
esac
echo "Thank You for Using macOSscirber! Please Give Me Feedback on this Utility on the Download Page."
echo "Created By: Iristotis"
sleep 10
exit
exit
