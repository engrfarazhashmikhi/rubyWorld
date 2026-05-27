begin

  puts "List All files:"
  puts "===============\n"
  all_files = `ls`
  puts "#{all_files.to_s}"

rescue Exception => e
  puts "Errr: " + e.to_s
end

