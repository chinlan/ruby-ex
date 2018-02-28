class A
  @@a = 1
  @a = 2
  a = 3
  define_method :getBinding do |i: @@a, j: A.instance_variable_get(:@a), k: a|
    return binding()
  end
end

p eval('[@@a, @a, a]', A.new.getBinding())
