class Rubyist
  def welcome(*args)
    "Welcome " + args.join(' ')
  end
  private
  def also_railist
    puts "Yeah, you are right!"
  end
end

obj = Rubyist.new
puts(obj.send(:welcome, 'famous', 'Rubyists'))

if obj.respond_to?(:also_railist)
  puts obj.send(:also_railist)
else
  puts "No such information available"
end

obj.send(:also_railist)
