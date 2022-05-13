#!/usr/bin/env bash


######################################################################
#  Change Log                                                        
######################################################################
#  Version	   Release Date		Notes                               
#  v.1.0   	   May 6, 2022		   Base Script                         
#  v.1.1       May 11, 2022      Code Cleanup, No New Functionality  
#  v.1.2	May 13, 2022		Added Utilities Subsection
#
#
#
#
#####################################################################


#Change Terminal Window Size
printf '\e[8;60;160t'


#Colors
ESC=$(printf '\033') RESET="${ESC}[0m" BLACK="${ESC}[30m" RED="${ESC}[31m"
GREEN="${ESC}[32m" YELLOW="${ESC}[33m" BLUE="${ESC}[34m" MAGENTA="${ESC}[35m"
CYAN="${ESC}[36m" WHITE="${ESC}[37m" DEFAULT="${ESC}[39m"

#Color Functions
greenprint() { printf "${GREEN}%s${RESET}\n" "$1"; }
blueprint() { printf "${BLUE}%s${RESET}\n" "$1"; }
redprint() { printf "${RED}%s${RESET}\n" "$1"; }
yellowprint() { printf "${YELLOW}%s${RESET}\n" "$1"; }
magentaprint() { printf "${MAGENTA}%s${RESET}\n" "$1"; }
cyanprint() { printf "${CYAN}%s${RESET}\n" "$1"; }


############## User Agreement ###########################
clear
echo "The following script was created to help install applications (apps) and features onto a new or existing Debain based system."
echo "By using this script you accept all responsibility for the system in which it is installed on."
echo "The script creators are not to be held liable for any issues/damages that may arise from the use of the script."
echo " "
echo " "
echo "Notes:"
echo " "
echo "This script has been tested on the following platforms"
echo "- Ubuntu 22.04 (AMDx64)"
echo " "
echo " "
echo "For feature requests/software additions please email homer13tech@gmail.com"
echo " "
echo " "
read -r -p "Do you agree and wish to continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        mainmenu
        ;;
    *)
        exit
        ;;
esac




#MAIN MENU
mainmenu() 
{
    clear
    echo -ne "
     $(blueprint 'Updates/Upgrades')      
     1) Install System Updates/Upgrades
     2) Upgrade to Lastest Distro Release
      
     $(blueprint 'Install Software (Select to Install Package)')
      
     $(greenprint 'Terminals')				$(greenprint 'Development')				$(greenprint 'Web Browsers')			$(greenprint 'App Stores/ Repositories')	
     3a) Terminator			4a) Microsoft Visual Studio		5a) Firefox			6a) Snap Store
     3b) Tilix				4b) Notepadqq				5b) Google Chrome		6b) Git
     3c) Install All Terminals		4c) Python 2				5c) Chromium			6c) Install All App Stores/Repositories
		       			4d) Python3				5d) Brave
		       		        4e) GitHub Desktop			5e) Install All Browsers
    				        4f) CURL
    				        4g) Install All Development Apps
     
     $(greenprint 'Office Suites')			$(greenprint 'Email/Chat Clients')     			$(greenprint 'Photography')
     7a) Libre Office			8a) Thunderbird				9a) GIMP
     7b) WPS Office			8b) Pidgin				9b) Blender
     					8c) Slack				9c) Install All Photo Apps
     					8d) Discord
     					8e) Skype
     					8f) Install All Email/Chat Clients
     
     $(greenprint 'Audio')				$(greenprint 'Video')   				$(greenprint 'Utilities')
     10a) Audacity			11a) VLC Player				12a) Neofetch			
     							
     										
     
     $(greenprint 'Install Entire Catalog')     
     13) Install All Applications Listed Above    
     
     $(blueprint 'Advanced Menu')
     $(greenprint 'Networking Tools')              	$(greenprint 'Penetration Testing Tools')
     14a) Wireshark                     15) Penetration Tools Menu
     14b) NMAP
     14c) Install All Network Tools
     
     

     
     
   
     15) $(redprint 'Exit')
     Choose an option:  "
     

     
     
    read -r ans
    case $ans in
    1)
        system_update
        perform_cleanup
        mainmenu
        ;;
    2)
        distro_upgrade
        perform_cleanup
        mainmenu
        ;;
    3a)
    	repository_refresh
    	install_tilix
    	perform_cleanup
    	mainmenu
    	;;
    3b)
    	repository_refresh
    	install_terminator
    	perform_cleanup
    	mainmenu
    	;;
    3c)
    	repository_refresh
    	install_tilix
    	install_terminator
    	perform_cleanup
    	mainmenu
    	;;
    4a)
    	repository_refresh
    	install_snap
    	install_vscode
    	perform_cleanup
    	mainmenu
    	;;
    4b)
    	repository_refresh
    	install_notepadqq
    	perform_cleanup
    	mainmenu
    	;;
    4c)
    	repository_refresh
    	install_python2
    	perform_cleanup
    	mainmenu
    	;;
    4d)
    	repository_refresh
    	install_python3
    	perform_cleanup
    	mainmenu
    	;;
    4e)
    	repository_refresh
    	install_github_desktop
    	perform_cleanup
    	mainmenu
    	;;
    4f)
    	repository_refresh
    	install_CURL
    	perform_cleanup
    	mainmenu
    	;;	
    4g)
    	repository_refresh
    	install_snap
    	install_vscode
    	install_notepadqq
    	install_python2
    	nstall_python3
    	install_github_desktop
    	install_CURL
    	perform_cleanup
    	mainmenu
    	;;
    5a)
   	repository_refresh
    	install_firefox
    	perform_cleanup
    	mainmenu
    	;;
    5b)
    	repository_refresh
    	install_google_chrome
    	perform_cleanup
    	mainmenu
    	;;
    5c)
    	repository_refresh
    	install_snap
    	install_chromium
    	perform_cleanup
    	mainmenu
    	;;
    5d)
    	repository_refresh
    	install_CURL
    	install_brave
    	perform_cleanup
    	mainmenu
    	;;
    5e)
    	repository_refresh
    	install_firefox
    	install_google_chrome
    	install_snap
    	install_chromium
    	install_CURL
    	install_brave
    	perform_cleanup
    	mainmenu
    	;;
    6a)
    	repository_refresh
    	install_snap
    	perform_cleanup
    	mainmenu
    	;;
    6b)
    	repository_refresh
    	install_git
    	perform_cleanup
    	mainmenu
    	;;
    6c)
    	repository_refresh
    	install_snap
    	install_git
    	perform_cleanup
    	mainmenu
    	;;
    7a)
    	repository_refresh
    	libreoffice_disclaimer
    	mainmenu
    	;;
    7b)
    	repository_refresh
    	install_snap
    	install_wpsoffice
    	perform_cleanup
    	mainmenu
    	;;
    8a)
    	repository_refresh
    	install_thunderbird
    	perform_cleanup
    	mainmenu
    	;;
    8b)
    	repository_refresh
    	install_pidgin
    	perform_cleanup
    	mainmenu
    	;;
    8c)
    	repository_refresh
    	install_slack
    	perform_cleanup
    	mainmenu
    	;;
    8d)
    	repository_refresh
    	install_discord
    	perform_cleanup
    	mainmenu
    	;;
    8e)
    	repository_refresh
    	install_skype
    	perform_cleanup
    	mainmenu
    	;;
    8f)
    	repository_refresh
    	install_thunderbird
    	install_pidgin
    	install_slack
    	install_discord
    	install_skype
    	perform_cleanup
    	mainmenu
    	;;
    9a)
    	repository_refresh
    	install_gimp
    	perform_cleanup
    	mainmenu
    	;;
    9b)
    	repository_refresh
    	install_blender
    	perform_cleanup
    	mainmenu
    	;;
    9c)
    	repository_refresh
    	install_gimp
    	install_blender
    	perform_cleanup
    	mainmenu
    	;;
    10a)
    	repository_refresh
    	install_audacity
    	perform_cleanup
    	mainmenu
    	;;
    11a)
    	repository_refresh
    	install_vlc
    	perform_cleanup
    	mainmenu
    	;;
    12a)
    	repository_refresh
    	install_neofetch
    	perform_cleanup
    	mainmenu
    	;;
    13)
    	repository_refresh
	install_tilix
	install_terminator
	install_snap
	install_vscode
	install_notepadqq
	install_python2
	install_python3
	install_github_desktop
	install_CURL
	install_firefox
	install_google_chrome
	install_chromium
	install_brave
	install_git
	libreoffice_disclaimer
	install_wpsoffice
	install_thunderbird
	install_pidgin
  	install_slack
	install_discord
	install_skype
	install_gimp
	install_blender
	install_audacity
	install_vlc
	install_neofetch
	perform_cleanup
	mainmenu
	;;
   14a)
    	repository_refresh
    	install_wireshark
	perform_cleanup
	mainmenu
	;;
   14b)
	repository_refresh
	install_nmap
	perform_cleanup
	mainmenu
	;;
   14c)
	repository_refresh
	install_wireshark
    	install_nmap
	perform_cleanup
	mainmenu
	;;
    15)
    	pentest_menu_disclaimer
    	;;
    *)
      echo "Wrong option."
      exit 1
      ;;
    esac
}

#####################################################
#                Penetration Tools Menu
#####################################################
pentest_menu() 
{
    clear
    echo -ne "
     $(blueprint 'Penetration Testing Tools')  
     
     $(greenprint 'Wifi Tools')    
     1) Wifite (note: Also installs hcxdumptool and hcxtool)
     2) Fern Wifi Cracker (note: Also installs Reaver and MaChanger)
     
     $(greenprint 'Other Tools')
     Coming Soon
      
     
     3) $(redprint 'Return to Main Menu')
     Choose an option:  "
     

     
     
    read -r ans
    case $ans in
    1)
      repository_refresh
	   install_wifite
	   install_hcxdumptool
	   install_hcxtool
	   perform_cleanup
	   pentest_menu
      ;;
    2)
      repository_refresh
      install_fern_wifi
      install_reaver
      install_macchanger
      perform_cleanup
      pentest_menu
      ;;
    
    *)
      mainmenu
      ;;
    esac
}

#####################################################
#                Sub Functions
#####################################################
repository_refresh()
{
   clear
   echo "***********************"
   echo "Refreshing Repositories"
   echo "***********************"
   sudo apt-get update -y
   clear
   echo "**********************"
   echo "Repositories Refreshed"
   echo "**********************"
   sleep 5
   clear
}
system_update()
{
   clear
   echo "**********************"
   echo "Starting System Update"
   echo "**********************"
   sudo apt-get update -y
   sudo apt-get dist-upgrade -y
   clear
   echo "***********************"
   echo "System Update Completed"
   echo "***********************"
   sleep 5
   clear
}
distro_upgrade()
{
   clear
   echo "***************************************"
   echo "Starting System Updates and OS Upgrades"
   echo "***************************************"
   sudo apt-get update -y
   sudo apt-get dist-upgrade -y
   sudo apt-get update -y
   sudo do-release-upgrade -y
   clear
   echo "****************************************"
   echo "System Updates and OS Upgrades Completed"
   echo "****************************************"
   sleep 5
   clear
}
install_tilix()
{
   clear
   echo "***************************"
   echo "Starting Tilix Installation"
   echo "***************************"
   sudo apt install tilix -y
   clear
   echo "****************************"
   echo "Tilix Installation Completed"
   echo "****************************"
   sleep 5
   clear
}
install_terminator()
{
   clear
   echo "********************************"
   echo "Starting Terminator Installation"
   echo "********************************"
   sudo apt install terminator -y
   clear
   echo "*********************************"
   echo "Terminator Installation Completed"
   echo "*********************************"
   sleep 5
   clear
}
install_snap()
{
   clear
   echo "********************************"
   echo "Starting Snap Store Installation"
   echo "********************************"
   sudo apt install snapd -y
   clear
   echo "*********************************"
   echo "Snap Store Installation Completed"
   echo "*********************************"
   sleep 5
   clear
}
install_vscode()
{
   clear
   echo "****************************************"
   echo "Starting Visual Studio Code Installation"
   echo "****************************************"
   sudo snap install --classic code
   clear
   echo "*****************************************"
   echo "Visual Studio Code Installation Completed"
   echo "*****************************************"
   sleep 5
   clear
}
install_notepadqq()
{
   clear
   echo "*******************************"
   echo "Starting Notepadqq Installation"
   echo "*******************************"
   sudo apt install notepadqq -y
   clear
   echo "********************************"
   echo "Notepadqq Installation Completed"
   echo "********************************"
   sleep 5
   clear
}
install_python2()
{
   clear
   echo "*******************************"
   echo "Starting Python v2 Installation"
   echo "*******************************"
   sudo apt install python2 -y
   clear
   echo "********************************"
   echo "Python v2 Installation Completed"
   echo "********************************"
   sleep 5
   clear
}
install_python3()
{
   clear
   echo "*******************************"
   echo "Starting Python v3 Installation"
   echo "*******************************"
   sudo apt install python3 -y
   sudo apt install python3-scapy -y
   sudo apt-get install python3-pyqt5 -y
   clear
   echo "********************************"
   echo "Python v3 Installation Completed"
   echo "********************************"
   sleep 5
   clear
}
install_github_desktop()
{
   clear
   echo "************************************"
   echo "Starting GitHub Desktop Installation"
   echo "************************************"
   cd ~/Desktop
   sudo wget https://github.com/shiftkey/desktop/releases/download/release-2.9.3-linux3/GitHubDesktop-linux-2.9.3-linux3.deb
   sudo apt-get install gdebi-core -y	
   sudo gdebi GitHubDesktop-linux-2.9.3-linux3.deb -y
   rm -f ~/Desktop/GitHubDesktop-linux-2.9.3-linux3.deb
   clear
   echo "*************************************"
   echo "GitHub Desktop Installation Completed"
   echo "*************************************"
   sleep 5
   clear
}
install_firefox()
{
   clear
   echo "*****************************"
   echo "Starting Firefox Installation"
   echo "*****************************"
   sudo apt install firefox -y
   clear
   echo "******************************"
   echo "Firefox Installation Completed"
   echo "******************************"
   sleep 5
   clear
}
install_google_chrome()
{
   clear
   echo "***********************************"
   echo "Starting Google Chrome Installation"
   echo "***********************************"
   cd ~/Desktop
   wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
   sudo apt install ./google-chrome-stable_current_amd64.deb
   rm -f google-chrome-stable_current_amd64.deb
   clear
   echo "************************************"
   echo "Google Chrome Installation Completed"
   echo "************************************"
   sleep 5
   clear   
}
install_CURL()
{
   clear
   echo "**************************"
   echo "Starting CURL Installation"
   echo "**************************"
   sudo apt install curl -y
   clear
   echo "***************************"
   echo "CURL Installation Completed"
   echo "***************************"
   sleep 5
   clear   
}
install_chromium()
{
   clear
   echo "******************************"
   echo "Starting Chromium Installation"
   echo "******************************"
   sudo snap install chromium
   clear
   echo "*******************************"
   echo "Chromium Installation Completed"
   echo "*******************************"
   sleep 5
   clear   
}
install_brave()
{
   clear
   echo "***********************************"
   echo "Starting Brave Browser Installation"
   echo "***********************************"
   cd ~/Desktop
   sudo apt -y install curl software-properties-common apt-transport-https
   curl https://brave-browser-apt-release.s3.brave.com/brave-core.asc| gpg --dearmor > brave-core.gpg
   sudo install -o root -g root -m 644 brave-core.gpg /etc/apt/trusted.gpg.d/
   echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
   sudo apt update
   sudo apt install brave-browser -y
   rm -f brave-core.gpg
   clear
   echo "************************************"
   echo "Brave Browser Installation Completed"
   echo "************************************"
   sleep 5
   clear  
}
install_git()
{
   clear
   echo "*************************"
   echo "Starting GIT Installation"
   echo "*************************"
   sudo apt install git-all -y
   clear
   echo "**************************"
   echo "GIT Installation Completed"
   echo "**************************"
   sleep 5
   clear
}
libreoffice_disclaimer()
{
   echo "LibreOffice cannot run on the same system as OpenOffice"
   echo "OpenOffce must be removed before installing LibreOffice"
   echo " "
   echo " "
   read -r -p "Do you agree and wish to continue installing LibreOffice? [Y/N] " response
   case "$response" in
    [yY][eE][sS]|[yY]) 
      remove_open_office
      install_libreoffice
      mainmenu
      ;;
    *)
      mainmenu
      ;;
   esac
}
remove_open_office()
{
   clear
   echo "********************************"
   echo "Removing OpenOffice Installation"
   echo "********************************"
   sudo apt-get remove openoffice.org*
   clear
   echo "*******************************"
   echo "OpenOffice Successfully Removed"
   echo "*******************************"
   sleep 5
   clear
}
install_libreoffice()
{
   clear
   echo "**********************************"
   echo "Starting Libre Office Installation"
   echo "**********************************"
   sudo apt install libreoffice -y
   clear
   echo "***********************************"
   echo "Libre Office Installation Completed"
   echo "***********************************"
   sleep 5
   clear
}
install_wpsoffice()
{
   clear
   echo "********************************"
   echo "Starting WPS Office Installation"
   echo "********************************"
   sudo snap install wps-office
   clear
   echo "*********************************"
   echo "WPS Office Installation Completed"
   echo "*********************************"
   sleep 5
   clear
}
install_thunderbird()
{
   clear
   echo "*********************************"
   echo "Starting Thunderbird Installation"
   echo "*********************************"
   sudo apt install thunderbird -y
   clear
   echo "**********************************"
   echo "Thunderbird Installation Completed"
   echo "**********************************"
   sleep 5
   clear
}
install_pidgin()
{
   clear
   echo "****************************"
   echo "Starting Pidgin Installation"
   echo "****************************"
   sudo apt install pidgin -y
   clear
   echo "*****************************"
   echo "Pidgin Installation Completed"
   echo "*****************************"
   sleep 5
   clear
}
install_slack()
{
   clear
   echo "***************************"
   echo "Starting Slack Installation"
   echo "***************************"
   sudo snap install slack --classic
   clear
   echo "****************************"
   echo "Slack Installation Completed"
   echo "****************************"
   sleep 5
   clear
}
install_discord()
{
   clear
   echo "*****************************"
   echo "Starting Discord Installation"
   echo "*****************************"
   sudo snap install discord
   clear
   echo "******************************"
   echo "Discord Installation Completed"
   echo "******************************"
   sleep 5
   clear
}
install_skype()
{
   clear
   echo "***************************"
   echo "Starting Skype Installation"
   echo "***************************"
   sudo snap install skype --classic
   clear
   echo "****************************"
   echo "Skype Installation Completed"
   echo "****************************"
   sleep 5
   clear
}
install_gimp()
{
   clear
   echo "**************************"
   echo "Starting GIMP Installation"
   echo "**************************"
   sudo apt install gimp -y
   clear
   echo "***************************"
   echo "GIMP Installation Completed"
   echo "***************************"
   sleep 5
   clear
}
install_blender()
{
   clear
   echo "*****************************"
   echo "Starting Blender Installation"
   echo "*****************************"
   sudo apt install blender -y
   clear
   echo "******************************"
   echo "Blender Installation Completed"
   echo "******************************"
   sleep 5
   clear
}
install_audacity()
{
   clear
   echo "******************************"
   echo "Starting Audacity Installation"
   echo "******************************"
   sudo apt install audacity -y
   clear
   echo "*******************************"
   echo "Audacity Installation Completed"
   echo "*******************************"
   sleep 5
   clear
}
install_vlc()
{
   clear
   echo "********************************"
   echo "Starting VLC Player Installation"
   echo "********************************"
   sudo apt install vlc -y
   clear
   echo "*********************************"
   echo "VLC Player Installation Completed"
   echo "*********************************"
   sleep 5
   clear
}
install_media_codecs()
{
   clear
   echo "**********************************"
   echo "Starting Media Codecs Installation"
   echo "**********************************"
   sudo apt install ubuntu-restricted-extras -y
   clear
   echo "***********************************"
   echo "Media Codecs Installation Completed"
   echo "***********************************"
   sleep 5
   clear   
}
perform_cleanup()
{
   clear
   echo "************************"
   echo "Starting Cleanup Process"
   echo "************************"
   sudo apt-get autoclean -y
   sudo apt-get autoremove -y
   sudo apt-get clean -y
   clear
   echo "*************************"
   echo "Cleanup Process Completed"
   echo "*************************"
   sleep 5
   clear   
}
install_wireshark()
{
   clear
   echo "*******************************"
   echo "Starting Wireshark Installation"
   echo "*******************************"
   sudo apt install wireshark -y
   clear
   echo "********************************"
   echo "Wireshark Installation Completed"
   echo "********************************"
   sleep 5
   clear
}
install_nmap()
{
   clear
   echo "**************************"
   echo "Starting NMAP Installation"
   echo "**************************"
   sudo apt install nmap -y
   clear
   echo "***************************"
   echo "NMAP Installation Completed"
   echo "***************************"
   sleep 5
   clear
}
pentest_menu_disclaimer()
{
   clear
   echo "All of the following tools are not made by the creator of this script."
   echo "In addition, by using these tools the user accepts that any use of these"
   echo "tools will not be used with malicious intent."
   echo " "
   echo "The creator of this script is not to be held liable for any use of these"
   echo "Penetration Testing Tools"
   echo " "
   echo " "
   read -r -p "Do you agree and wish to continue to the Penetration Testing Menu? [Y/N] " response
   case "$response" in
    [yY][eE][sS]|[yY]) 
	   pentest_menu
      ;;
    *)
      mainmenu
      ;;
   esac
}
install_wifite()
{
   clear
   echo "****************************"
   echo "Starting Wifite Installation"
   echo "****************************"
   sudo apt-get install wifite -y
   clear
   echo "*****************************"
   echo "Wifite Installation Completed"
   echo "*****************************"
   sleep 5
   clear  
}
install_hcxdumptool()
{
   clear
   echo "**********************************"
   echo "Starting HCXDump Tool Installation"
   echo "**********************************"
   sudo apt-get install hcxdumptool -y
   clear
   echo "***********************************"
   echo "HCXDump Tool Installation Completed"
   echo "***********************************"
   sleep 5
   clear 
}  
install_hcxtools()   
{
   clear
   echo "*******************************"
   echo "Starting HCX Tools Installation"
   echo "*******************************"
   sudo apt-get install hcxtools -y
   clear
   echo "********************************"
   echo "HCX Tools Installation Completed"
   echo "********************************"
   sleep 5
   clear   
}
install_fern_wifi()
{
   clear
   echo "*******************************"
   echo "Starting FERN WiFi Installation"
   echo "*******************************"
   sudo apt-get install subversion -y
   cd ~/Desktop
   sudo git clone https://github.com/savio-code/fern-wifi-cracker.git
   clear
   echo "********************************"
   echo "FERN WiFi Installation Completed"
   echo "********************************"
   sleep 5
   clear 
}
install_reaver()
{
   clear
   echo "****************************"
   echo "Starting Reaver Installation"
   echo "****************************"
   sudo apt install reaver -y
   clear
   echo "*****************************"
   echo "Reaver Installation Completed"
   echo "*****************************"
   sleep 5
   clear  
}
install_macchanger()
{
   clear
   echo "********************************"
   echo "Starting MacChanger Installation"
   echo "********************************"
   sudo apt-get install macchanger -y
   clear
   echo "*********************************"
   echo "MacChanger Installation Completed"
   echo "*********************************"
   sleep 5
   clear
}
install_neofetch()
{
   clear
   echo "******************************"
   echo "Starting Neofetch Installation"
   echo "******************************"
   sudo apt-get install neofetch -y
   clear
   echo "*******************************"
   echo "Neofetch Installation Completed"
   echo "*******************************"
   sleep 5
   clear
}
#####################################################
#                     RUN
#####################################################
#Run Main Menu
mainmenu

