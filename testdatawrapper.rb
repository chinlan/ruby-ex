require_relative 'datawrapper'
klass = DataWrapper.wrap("location.txt")
list = klass.read
list.each do |location|
  puts("#{location.name} is from the #{location.country}")
end
