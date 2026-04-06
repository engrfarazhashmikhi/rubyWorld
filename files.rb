=begin

  Ruby File Handling

=end

class RubyFiles

  def fileOpen(fileName = nill, mode = nil)

    file = File.open(fileName, mode)

    puts file.read()

    file.close()

  end

end

file_to_open = "resume.html"
open_in_mode = "r"

myFile = RubyFiles.new()
myFile.fileOpen(file_to_open, open_in_mode)

