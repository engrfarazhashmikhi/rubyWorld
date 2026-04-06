=begin

  Ruby File Handling

=end

class RubyFiles

  def fileOpen(fileName = nill, mode = nil)

    file = File.open(fileName, mode)

    puts file.read()

    file.close()

  end

  def fileWrite(fileName = nill, statement_to_write = nil)

    getFileName = fileName.chomp().to_s
    getStatement = statement_to_write.chomp().to_s + "\n"

    file_to_open = File.open(getFileName, "a+")
    file_to_open.write(getStatement)
    file_to_open.close()

  end

end

file_to_open = "notes.txt"
open_in_mode = "r"
text_to_write = "I LOVE Computer Programming"

myFile = RubyFiles.new()
puts "Before"
myFile.fileOpen(file_to_open, open_in_mode)
puts "File Write"
myFile.fileWrite(file_to_open, text_to_write)
puts "After"
myFile.fileOpen(file_to_open, open_in_mode)

