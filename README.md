# low battery notify

intended to work with i3, dunst.

tested on Ubuntu 23.04 w i3

Change the value of THRESHOLD to change at which percentage the notifications will trigger.

TROUBLESHOOTING:
for errors:
"Failed to execute child process “dbus-launch” "
if you get errors about not being able to launch dbus, may need to install dbus-x11

This script is intended to run as a cronjob to trigger dunst notifications when remaining battery percentage is below a given threshold
