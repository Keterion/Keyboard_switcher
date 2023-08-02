# Keeb switcher
You have the kb_switcher.sh script, which will need to be launched to be able to switch keyboards. In the script in line 1, you can specify the layout names.
<br>
The second script, switch_kb.sh, can be launched however you like. It will send the USR1 signal to the kb_switcher script which will cycle through the keyboard list.
