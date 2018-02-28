class A
  def initialize
    @a = 11
    @@a = 22
    a = 33 #
    puts a
  end
  @a = 1
  @@a = 2 #
  a = 3

  # class << A
  #   a = 3
  #   define_method :print2 do
  #     puts a
  #   end
  # end

  define_method :print do
    puts a
    puts @a
    puts @@a
  end
end

puts A.instance_variable_get(:@a)
puts A.class_variable_get(:@@a)
# A.print2
A.new.print
