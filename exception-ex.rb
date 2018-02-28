begin
  raise "something is wrong"
rescue => e
  puts "An exception is occured!"
  p e.message
  p $!
end
