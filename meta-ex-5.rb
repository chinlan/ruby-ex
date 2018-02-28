# class MaskedString < String
#   def tr_vowel
#     tr 'aeiou', '*'
#   end
#   def self.tr_vowel str
#     str.tr 'aeiou', '*'
#   end
# end

# MaskedString = Class.new do
#   define_method :tr_vowel do
#     puts 'aeiou'
#   end
# end
# def MaskedString.tr_vowel(str)
#    puts str
# end


# MaskedString.tr_vowel('animal')
# MaskedString.new.tr_vowel
Object.const_set('MaskedString', Class.new)
module M
  define_method :foo do |i|
    puts i
  end
end

MaskedString.class_eval do
  define_method :foo do
    puts 'foo'
  end
end

MaskedString.extend(M)
MaskedString.foo('animal')
MaskedString.new.foo
