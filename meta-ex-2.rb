class I
  def like arg
    puts "%s %s %s" % [self.class, self.class.instance_methods(false).first.to_s, arg]
  end
end

C, m, arg = gets.split

klass_name = Object.const_get('C')

klass = Object.const_get(klass_name)
klass.new.send(m, arg)
