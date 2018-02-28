require_relative "unacceptable_requid_error"

begin
  retry_count ||= 0
  puts "Try..."

  teapot = Teapot.new(%w(coffee tea beer wine).sample)
  puts teapot.pour_out
rescue UnacceptableRequidError => e
  retry_count += 1
  retry if retry_count < 3
end
