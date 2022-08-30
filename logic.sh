#!/bin/bash

KEYS="NULL"
if [[ $BROWSER -eq "chrome" ]]
    then
        KEYS="AQADX-46"  # use testExecKeys not directly test keys
elif [[ $BROWSER -eq "firefox" ]]
    then    
        KEYS="AQADX-45"  # use testExecKeys not directly test keys
else
    KEYS="AQADX-30"  # use testExecKeys not directly test keys
fi

echo "Selected browser is: " $BROWSER