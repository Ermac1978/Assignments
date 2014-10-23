=begin
Assignment 22
Create an InvoiceItem class and an Invoice class.
The class should have the following attributes: product_name, sale_price, quantity, tax percentage
Create a class method in Invoice that will calculate a total for an array of InvoiceItem objects
Use reject or select methods in order to remove any InvoiceItem objects that have a zero quantity
Use the sum method to get the total
Ask the user to enter in the attributes for each invoice item, hitting ENTER on product name when done
Then output each line item.
Show a sub-total without the tax, then a line item for the tax, then the total.
=end

require 'active_support'
require 'active_support/all'

class InvoiceItem

  attr_accessor :product_name
  attr_accessor :sale_price
  attr_accessor :quantity

end


class Invoice

  attr_accessor :tax_percentage
  attr_accessor :items

  def initialize
    @items = Array.new
  end

  def Invoice.items_total_amount(items)
    items.reject! {|item| item.quantity == 0}
    invoice_items_array = items.sum {|item| (item.sale_price * item.quantity)}
  end

  def items_total_qty
    @items.reject {|item| item.quantity == 0}
    invoice_items_array = @items.sum {|item| (item.quantity)}
  end

end

invoice = Invoice.new
#invoice.items = Array.new

loop do
  invoice_item = InvoiceItem.new
  print "Please provide the product name (press ENTER when done): "
  invoice_item.product_name = $stdin.gets.chomp
  break if invoice_item.product_name == ""
  print "Please provide the sale price: "
  invoice_item.sale_price = $stdin.gets.chomp.to_f
  print "Please provide the item quantity: "
  invoice_item.quantity = $stdin.gets.chomp.to_i
  invoice.items << invoice_item
end

print "What is your tax rate? "
invoice.tax_percentage = gets.strip.to_f.round(2) / 100

invoice.items.each do |invoice_item|
puts "Product name: #{invoice_item.product_name}\t\tSale Price: \$#{invoice_item.sale_price}\t\tQty: #{invoice_item.quantity}"
end

invoice_total = Invoice.items_total_amount(invoice.items)
invoice_total2 = invoice.items_total_qty
puts "Sub-total: #{invoice_total.round(2)}"
puts "Tax: #{(invoice.tax_percentage * invoice_total).round(2)}"
puts "Total Amount Due: #{invoice_total.round(2) + (invoice.tax_percentage * invoice_total).round(2)} "
puts "Total Qty: #{invoice_total2}"
