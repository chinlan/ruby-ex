# class MyClass
#   def greet
#     puts "Hello!"
#   end

#   def greet_with_log
#     puts "Calling method..."
#     puts "Hello!"
#     puts "...Method called"
#   end

#   alias_method :greeting_with_log, :greet
#   alias_method :greet, :greet_with_log
# end

# MyClass.new.greet

class Rubyist
  def initialize name
    @name = name
    @count = 0
  end

  def say!
    puts 'hello'
  end
end

satish = Rubyist.new("Satish")
3.times{satish.say!}

puts '_'*20

module RubyLearning
  module Module
    def alias_method_chain(target, feature)
      target = target.to_s
      last = ""
      if (target[target.length-1] == ("!" || "?" || "="))
        last = target[target.length-1]
        t = target.delete(last)
      end
      puts "***called alias_method_chain***"
      puts "aliased_target is: #{t}"
      puts "punctuation is: #{last}"

      alias_method "#{t}_without_#{feature.to_s}#{last}".to_sym, target.to_sym
      alias_method target.to_sym, "#{t}_with_#{feature.to_s}#{last}".to_sym

    end
  end
end

class Rubyist
  extend RubyLearning::Module
  def say_with_count!
    @count += 1
    puts "#{@name}(#{@count}) starts greeting..."
    puts "hello"
    puts "#{@name}(#{@count}) finished greeting..."
  end

  alias_method_chain :say!, :count
end

3.times{satish.say!}
