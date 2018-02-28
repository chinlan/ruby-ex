require "test/unit"
require_relative "person.rb"

class TestPerson < Test::Unit::TestCase
  def test_methods_exist
    person = Person.new("Ada", "Wang")
    expected_methods = %w{ age name firstname lastname }
    expected_methods.each do |method|
      assert(person.respond_to?(method), "#{method} does not exist")
    end
  end
  def test_person_functionality
    person = Person.new("Mikey", "Hogarth")
    person.age = 30
    assert_instance_of(Person, person)
    assert_equal("Mikey Hogarth", person.name)
    assert_raises(RangeError) { person.age = -1 }
    assert_raises(RangeError) { person.age = 201 }
  end

end
