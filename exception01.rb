require_relative "unacceptable_requid_error"

# begin
#   teapot = Teapot.new("tea")
#   puts teapot.pour_out
# rescue UnacceptableRequidError => e
#   puts "Rescued in 'UnacceptableRequidError => e'"
#   p e
#   p e .obj
# rescue NoMethodError, ZeroDivisionError => e
#   puts "Rescued in 'rescue NoMethodError, ZeroDivisionError => e'"
#   p e
# rescue => e
#   puts "Rescued in 'rescue StandardError => e'"
#   p e
# else
#   puts "There are no errors"
# ensure
#   puts "Ensure"
# end

teapot = Teapot.new("coffee") rescue nil

