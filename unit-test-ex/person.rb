class Person
  def initialize(firstname, lastname)
    @name = name
    @firstname = firstname
    @lastname = lastname
  end

  def name
    "#{firstname} #{lastname}"
  end

  def age=(age)
    if age < 0
      raise RangeError.new
    elsif age > 200
      raise RangeError.new
    end
    @age = age
  end

  attr_accessor :firstname, :lastname
  attr_reader :age
end
