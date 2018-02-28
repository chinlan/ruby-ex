class Rubyist
  @@geek = "Ruby's Matz"
  @@country = "USA"
  def initialize
    @geek = "Matz"
  end
end

class Child < Rubyist
  @@city = "Nashville"
end

obj = Rubyist.new

obj.instance_eval do
  puts self
  puts @geek
end

Rubyist.instance_eval do
  def who
    "Geek"
  end
end

puts Rubyist.who
puts Rubyist.class_eval("@@geek")
Rubyist.class_eval do
  def who
    "Girl"
  end
end
girl = Rubyist.new
puts girl.who

Rubyist.class_variable_set(:@@geek, 'Matz rocks!')
puts Rubyist.class_variable_get(:@@geek)

print Rubyist.class_variables
p Child.class_variables

class Musician
  def initialize(p1, p2)
    @geek, @country = p1, p2
  end
end

mark = Musician.new('Matz', 'USA')
puts mark.instance_variable_get(:@geek)
puts mark.instance_variable_get(:@country)
mark.instance_variable_set(:@country, 'Japan')
puts mark.inspect

class_name = 'pianist'.capitalize
Object.const_set(class_name, Class.new)
class_name = Object.const_get(class_name)
puts class_name
class_name.class_eval do
  define_method :who do |my_arg|
    my_arg
  end
end
pi = class_name.new
puts pi.who('Mozart')
