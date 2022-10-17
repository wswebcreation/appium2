#!/bin/bash

if [ $# -ne 0 ]; then
    echo "######################################################################"
    echo "# Appium2 will be started with the following command line arguments: #"
    echo "# $@"
    echo "######################################################################"
    
    npm --prefix $APPIUM2_PATH run appium2 -- $@
else
    echo "######################################################################"
    echo "# You can run appium2 with for example these arguments:              #"
    echo "#                                                                    #"
    echo "#  appium2 server --log-timestamp --relaxed-security                 #"
    echo "#                                                                    #"
    echo "# This will:                                                         #"
    echo "# - start the server:                                                #"
    echo "# - add additional timestamps to the logs                            #"
    echo "# - run in 'relaxed security mode'                                   #"
    echo "#                                                                    #"
    echo "# Check the Appium docs at                                           #"
    echo "# https://github.com/appium/appium                                   #"
    echo "# for more information                                               #"
    echo "######################################################################"
fi

