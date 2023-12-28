#!/bin/bash
# adjust dock
sudo -v

if [ $? -eq 0 ]; then
    LANG="ko_KR.UTF-8" wine KakaoTalk_Setup.exe
    wine reg add "HKEY_CURRENT_USER\Software\Wine\X11 Driver" /v inputStyle /t REG_SZ /d root
    cp ./malgun.ttf ~/.wine/drive_c/windows/Fonts/malgun.ttf
    sed -i 's/"MS Shell Dlg"="Tahoma"/"MS Shell Dlg"="Malgun Gothic"/' ~/.wine/system.reg
    sed -i 's/""MS Shell Dlg 2"="Tahoma""/"MS Shell Dlg"="Malgun Gothic"/' ~/.wine/system.reg
else
    echo "Sudo credentials not available. Script terminated."
fi
