require 'commands.rb'
require 'highline/system_extensions'

include HighLine::SystemExtensions

class Main
puts "mulb-shell type 'help' for help (or CTRL-X to
exit)."
@@input=":"
@@buffer=""
  print "mulb>"
loop do
    char = get_character()
    case char
      when ?\C-x: print "Exiting..."; exit;
      when 32:
          @@input=@@input+":"
          @@buffer=@@buffer + char.chr
          print @@buffer[-1,1]
      when 13: 
          #@@input=@@input+":"
          caller=Commands.new
          output= caller.valid_input(@@input)
          @@input=":"
          @@buffer=""
          puts output
          print "mulb>"
      when 8: 
          print @@buffer[1,-2]
      else
          @@buffer=@@buffer + char.chr
          @@input=@@input + char.chr
          print @@buffer[-1,1]
        end   
  end
end
