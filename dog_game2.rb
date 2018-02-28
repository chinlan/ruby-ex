class Dog
  # attr_reader :name
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  MSGS = {dance: 'is dancing', poo: 'is a smelly doggy!', laugh: 'finds this hilarious!'}
  # def can(*actions)
  #   (class << self; self; end).class_eval do
  #     actions.each do |action|
  #       define_method(action.to_sym) do
  #         puts "#{self.name} #{MSGS[action.to_sym]}"
  #       end
  #     end
  #   end
  # end

  def can(*actions, &block)
    actions.each do |action|
      singleton_class.send :define_method, action do
        if block
          # puts block.call   # Outside the class
          puts instance_eval(&block)  # Inside the class
        else
          puts "#{self.name} #{MSGS[action.to_sym]}"
        end
      end
    end
  end

  def method_missing(action, *args)
    puts "#{self.name} doesn't understand #{action}"
  end

end


lassie, fido, stimpy = %w[Lassie Fido Stimpy].collect{|name| Dog.new(name)}
lassie.can :dance, :poo, :laugh
fido.can(:poo){"#{name} is smelly."}
stimpy.can :dance
stimpy.can(:cry){"#{name} cried AHHHH"}

puts lassie.dance
puts lassie.poo
puts lassie.laugh
puts ''
puts fido.dance
puts fido.poo
puts fido.laugh
puts ''
puts stimpy.dance
puts stimpy.poo
puts stimpy.laugh
puts stimpy.cry
