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
    
  end
  
  def openf(input)
    
  end
  
  def write(input)
    
  end
  
  def delete(input)
  end
  
end