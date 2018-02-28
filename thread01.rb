names = %w(alice white-rabbit cheshire-cat)
threads = []

names.each do |name|
  threads << Thread.new do
    3.times do |i|
      print "#{name}:#{i}, "
    end
  end
end

threads.each { |t| t.join }

puts "\nall threads are terminated."
