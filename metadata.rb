maintainer          "Stefan Richter"
maintainer_email    "stefan@02strich.de"
license             "MIT"
description         "Installs/Configures mpd"
long_description    IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version             "0.0.2"

recipe              "mpd::default"			"Install and configure primary mpd instance"

supports            "debian"
supports            "ubuntu"
