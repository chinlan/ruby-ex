module M
  def foo
    puts "foo"
  end

  def self.bar
    puts "bar"
  end
end

class A
  include M
  def foo
    puts "fooooooo!"
  end
end

class B
  prepend M
  def foo
    puts "not foo"
  end
end

class C
  extend M
end

class D
  def self.included(base)
    base.extend(M)
  end
end

module D2
  def self.included(base)
    base.extend(M2)
    base.extend(M)
  end
  module M2
    def faa
      puts "faa"
    end
  end
  def waa
    puts "waa"
  end
end

class E
  include D2
end

A.new.foo
"--------"
B.new.foo
"---------"
C.foo
# "---------"
# D.new.foo
"--------"
# E.new.foo
"--------"
E.faa
E.foo
"--------"
# E.bar
E.new.waa
