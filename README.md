chef-mpd
========

Chef cookbook for MPD.

You can custimize it by defining the following attributes:
* music_directory: the root directory of the tree to scan for music
* user: the user as whom to run MPD. It needs access to the music_directory By default the *mpd* user.
* bind: the IP address to bind to for the control interface. By default the local IP adress.
* port: the port to bind to for the control interface. By default this is *6600*.
* zeroconf: whether to advertise the presence of this MPD instance via zeroconf/avahi/bonjour. By default enabled.
