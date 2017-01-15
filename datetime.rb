#!/usr/bin/ruby -w
require 'date'

#current time
now = Time.new
puts "Now it's " + now.inspect
anotherWay = Time.now
puts "Now it's " + anotherWay.inspect

#particular elements of time
puts now.year
puts now.month
puts now.day
puts now.wday
puts now.yday
puts now.hour
puts now.min 
puts now.sec
puts now.usec
puts now.zone
puts now.utc_offset
puts now.isdst
puts now.gmtime
puts now.getutc
puts now.getlocal
puts now.localtime
puts now.to_s
puts now.ctime
puts now.strftime("%Y-%m-%d %H:%M:%S")

time = Time.now
values = time.to_a
p values
p Time.utc(*values)
p Time.now.to_i
