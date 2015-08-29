# requirements:
# imported tax = 15%
# regular tax  = 10%
# tax exempt   = 0%

class Cart
    def initialize
        @items = []
        @subtotal = 0
        @tax = 0
        @grand_total = 0
    end

    def add_item(item)
        tax = 0
        if item.imported
            tax = item.price * 0.15
        elsif not item.exempt
            tax = item.price * 0.10
        end

        @subtotal += item.price
        @tax += tax
        @grand_total = @subtotal + @tax

        @items << item
    end

    def print_receipt
        @items.each do |foo|
            puts "#{foo.name} #{foo.price}"
        end

        foo = {:a => 1, :b => 2}

        puts "Subtotal: #{@subtotal}"
        puts "Tax: #{@tax}"
        puts "Grand total: #{@grand_total}"
    end
end

class Product

    #attr_reader :price, :name, :imported, :exempt

    def initialize(name, price, imported, exempt)
        @name  = name
        @price = price
        @imported = imported
        @exempt = exempt
    end

end

daves_cart = Cart.new
jacks_cart = Cart.new

tea = Product.new("tea", 4.99, true, false)
coffee = Product.new("coffee", 5.99, true, true)
shampoo = Product.new("shampoo", 3.99, false, false)


daves_cart.add_item(coffee)
daves_cart.add_item(tea)
daves_cart.add_item(shampoo)
daves_cart.print_receipt
puts "-"*10
jacks_cart.add_item(coffee)
jacks_cart.print_receipt
# puts daves_cart.inspect
