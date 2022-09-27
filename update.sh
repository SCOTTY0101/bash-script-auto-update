#!/bin/bash

# Color variables
red='\033[05;01;31m'
green='\033[05;01;32m'
# reset the color after that
reset='\033[0m'

exit_status() {
    if [ $? -eq 0 ]
        then
                echo
                echo "-----------------------------------------"
                echo -e ">>>${green}         Command Execting Was Successful         ${reset}<<<"
                echo "-----------------------------------------"
                echo
                sleep 2
                clear
        else
                echo
                echo "-------------------------------------------------------"
                echo -e ">>>${red}  [Error] Process Command Executing Has Failed!  ${reset}<<<"
                echo "-------------------------------------------------------"
                echo

        read -p "The last command has exited with an error. Exit script? (yes/no)" answer
                if [ "$answer" == "yes" ]
                    then
                        exit 1
                fi 
    fi 
}

upgrade() {
            echo
            echo -e "***>>>${green}Upgrading The Operating System${reset}<<<***"
            echo
            sudo apt update;
            exit_status

            "yes" | sudo apt upgrade;
            exit_status
}

cleanUp() {
            sudo apt autoremove;
            exit_status
}

exitUpdate() {

            echo
            echo "-------------------------------------------------------"
            echo -e ">>>>${green}   Operating System Update Has Been Completed  ${reset}<<<<"
            echo "-------------------------------------------------------"
            echo
        exit
}

#calls the functions
upgrade
cleanUp
exitUpdate
