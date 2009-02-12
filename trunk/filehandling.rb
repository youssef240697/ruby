require 'pathname'

dir=Pathname.new(__FILE__).realpath

  size = File.size(dir)        # 27662
  isdir = File.directory?(dir) # false
  @@base  = File.dirname(dir)     # "/usr/bin"
  #@base = File.basename(dir)  
class Filehandler
  def createdir(input)
    begin
      #puts ""
      Dir.mkdir(input)
      return "Directory erstellt:" + @@base  + "/" + input
    rescue
      return "Fehler beim erstellen des Directorys aufgetreten"
    end
  end
  
  def mkfile(input)
    begin
      if(!File.exists?(input))
        File.new("#{@@base}"+"/"+"#{input}", "w+")
      end
      return "File erstellt:" + @@base + "/" + input
    rescue
      return "Fehler beim erstellen des Files aufgetreten"
    end
  end
  
  def open(input)
    begin
    puts "#{input}"
      if(!File.exists?(input[2]))
        File.open("#{input[2]}", "r+")
        File.puts("#{input[3]}")
      end
      return "File erstellt"
    rescue
      return "Fehler beim erstellen des Files aufgetreten"
    end
    
    
  end
  
  def write(input)
    
  end
  
  def delete(input)
  end
  
end