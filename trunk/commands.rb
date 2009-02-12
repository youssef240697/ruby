require 'filehandling.rb'

class Commands
  
  def valid_input(input)
    begin
        @input_array=input.split(",")
        case @input_array[1]
          when "mkdir"
            puts " "
            file =Filehandler.new
            output=file.createdir(@input_array[2])
            return output
          when "mkfile" 
            puts " "
            file =Filehandler.new
            output=file.mkfile(@input_array[2])
            return output  
          when "open" 
            puts " "
            file =Filehandler.new
            output=file.open(@input_array)
            return output              
          when "help"
            puts " "
            return "Befehlsliste: mkdir [string];mkfile [string]+[dateiendung]"
        else  
          puts "Unbekannter Befehl"
        end  
    
    rescue 
        return "Fehler"
    end
  end
end
