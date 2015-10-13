name             'textify'
maintainer       "textify"
maintainer_email "k.hakimzadeh@gmail.com"
license          "Apache v2.0"
description      'Installs/Configures/Runs textify'
version          "0.1"

recipe            "textify::install", "Experiment setup for textify"
recipe            "textify::experiment",  "configFile=; Experiment name: experiment"


depends "kagent"



%w{ ubuntu debian rhel centos }.each do |os|
  supports os
end



attribute "textify/group",
:description => "group parameter value",
:type => "string"

attribute "textify/user",
:description => "user parameter value",
:type => "string"


