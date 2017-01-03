#!/usr/bin/env ruby
$pb_log_enabled = false
$pb_log_file = File.dirname(__FILE__) + "/other/log/pentbox_log_" + ENV['USER'] + ".log"
##### Loading time
dir = File.dirname(__FILE__)
require dir + "/lib/pb_proced_lib.rb" # Common procedures and functions.

version = "1.8"
Signal.trap("INT") do
	puts ""
	puts "[*] EXITING ..."
	puts ""
	pb_write_log("exiting", "Core")
	exit
end
#####
require "#{dir}/tools/cryptography/base64.rb"
					Cryptogr_pb::Base64_pb.new()