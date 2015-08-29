class Person

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def say_hello
        puts "Hello, my name is #{@name}!"
    end
end

class Student < Person
    def learn
        puts "My name is #{@name}, and I'm learning Ruby!"
    end
end

class Instructor < Person
    def teach
        puts "My name is #{@name}, and I'm teaching Ruby!"
    end
end


dave = Person.new("Dave")
dave.say_hello
# puts dave.name

bob = Student.new("Bob")
bob.say_hello
bob.learn
puts bob.name

steve = Instructor.new("Steve")
steve.say_hello
steve.teach
# puts steve.name