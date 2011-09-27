require 'minitest/autorun'
require 'flickrb'

begin
  require 'turn'
rescue LoadError
  puts "You don't have Turn, so I'm not gonna use it!"
end
