animal = 'dog'

# def animal.speak
#   puts 'Dog says Woof!'
# end

# class << animal
#   def speak
#     puts 'Dog says Woof!'
#   end
# end

# define_method :speak do
#   puts 'Dog says Woof!'
# end

# animal.instance_eval do
#   def speak
#     puts 'Dog says Woof!'
#   end
# end

# module M
#   def speak
#     puts 'Dog says Woof!'
#   end
# end
# animal.extend M

# animal.define_singleton_method(:speak) do
#   puts 'Dog says Woof!'
# end

animal.send :define_singleton_method, :speak, lambda { puts 'Dog says Woof!'}

animal.speak
