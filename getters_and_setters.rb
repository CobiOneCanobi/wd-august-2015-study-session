class Person

    attr_accessor :first_name

    def initialize(first, last)
        @first_name = first
        @last_name  = last
    end

    def say_hello
        puts "Hello, my name is #{@first_name}!"
    end
    # def first_name
    #     puts "i'm in the first_name method"
    #     return @first_name
    # end

    # def first_name=(value)
    #     @first_name = value
    # end
end

dave = Person.new
dave.first_name = "Dave"
puts dave.inspect

# dave.say_hello
# dave.say_goodbye
# puts dave.inspect
# puts "#{dave.first_name}"

# dave.first_name = "Steve"
# puts dave.inspect
# puts "#{dave.first_name}"
# puts "#{dave.last_name}"