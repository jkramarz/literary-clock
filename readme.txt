literary-clock
------------------ v0.1
                   by lenwe
                   based on:
                    - Online Screensaver scheduler by peterson, via mobileread.com
                    - Jaap Meijers's image generator code from https://www.instructables.com/Literary-Clock-Made-From-E-reader/
                    - Carlos Bonadeo's quote database from https://github.com/cdmoro/literature-clock

literary-clock overwrites the screen content while the screensaver is running
with a nice (or not) quote from literature.
The action is performed every minute while the device is charging and by default
every 15 minutes when it is running on battery.

Disclaimer
----------

Please be advised that you are using this extension on your own risk. 


Prerequisites
-------------

* You must generate the images first on your computer using generate_images.{sh,bat} script.
* You must have KUAL v2 or later installed.


Installation
------------

Unzip the downloaded file into the extensions folder (/mnt/us/extensions
when using SSH, otherwise the extensions folder at root of the Kindle volume
when connected to your PC).


Configuration
-------------

Edit literary-clock/bin/config.sh, all available options are described
here. Note that you MUST use an editor that supports Unix line endings. On
Windows, use e.g. the free notepad++ application.


Use
---

Run KUAL and enter the "literary-clock" section. Here you have an item
to preview the screen right away (one time), and you can also enable or
disable the screensaver overwrite.


Uninstalling
------------

It is recommended to disable auto-updates prior to deleting the folder
from the extensions directory.
