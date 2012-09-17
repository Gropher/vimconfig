# ~/.irbrc
# Requires the following gems: wirble, hirb
#
# Hirb: http://tagaholic.me/hirb/doc/index.html
# Wirble: http://pablotron.org/software/wirble/

require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"
IRB.conf[:AUTO_INDENT] = true

ActiveRecord::Base.logger = Logger.new(STDOUT) if defined? ActiveRecord

# load wirble
require 'rubygems'
require 'wirble'

# start wirble (with color)
if defined? Wirble
  Wirble.init
  Wirble.colorize
end

# load Hirb
#require 'hirb'
#Hirb.enable

