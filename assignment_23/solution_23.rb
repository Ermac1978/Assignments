# Assignment 23
# Take what we did in class with the Walmart API, and expand it to include the following functionality:
# When the user searches for a product, allow the user to enter the product id (from the search results). For the product indicated, create an InvoiceItem object and add it to your Invoice object
# Add the category to the InvoiceItem
# After the user adds a product to the invoice (using your InvoiceItem class), loop and allow them to search again
# When the user hits ENTER instead of a SEARCH term or a product id, print out the same result as in Assignment 22.

require 'active_support'
require 'active_support/all'
require 'net/http'
require 'json'


class InvoiceItem

  attr_accessor :product_name
  attr_accessor :sale_price
  attr_accessor :item_id
  attr_accessor :categoryPath
  attr_accessor :quantity
end

class Invoice

  attr_accessor :tax_percentage
  attr_accessor :items

  def items_total_amount
    @items.reject {|item| item.quantity == 0}
    invoice_items_array = @items.sum {|item| (item.sale_price * item.quantity)}
  end

  def items_total_qty
    @items.reject {|item| item.quantity == 0}
    invoice_items_array = @items.sum {|item| (item.quantity)}
  end

end


QUERY_URL = 'http://api.walmartlabs.com/v1/search'
API_KEY = 'y8rs7scmecpnswzxnsrjgtku'

invoice = Invoice.new
invoice.items = Array.new

loop do
  puts "Which item are you looking for at Walmart.com (press ENTER to quit)?"
  product_search = $stdin.gets.chomp
  break if product_search == ""
  uri = URI(QUERY_URL + "?query=#{product_search}&format=json&apiKey=#{API_KEY}&sort=relevance")
  raw_json = Net::HTTP.get(uri)
  search_results = JSON.parse(raw_json)
  items = search_results["items"]
  items.each do |item|
    puts "#{item["name"]}, #{item["salePrice"]}, #{item["itemId"]}, item #{item["availableOnline"]}"
  end


invoice_item = InvoiceItem.new

  puts "Please select an item by entering its itemId number (press ENTER to quit): "
  item_id_number = $stdin.gets.chomp.to_i
  break if item_id_number == ""

  item_id_array = items.select {|item| item["itemId"] == item_id_number}

  invoice_item.product_name = item_id_array[0]["name"]
  invoice_item.sale_price = item_id_array[0]["salePrice"].to_f
  invoice_item.item_id = item_id_array[0]["itemId"].to_i
  invoice_item.categoryPath = item_id_array[0]["categoryPath"]
  print "Please enter the quantity you would like to add to your cart: "
  invoice_item.quantity = $stdin.gets.chomp.to_i
  invoice.items << invoice_item
end


print "What is your tax rate? "
invoice.tax_percentage = gets.strip.to_f.round(2) / 100

invoice.items.each do |invoice_item|
puts "Product name: #{invoice_item.product_name}\t\tSale Price: \$#{invoice_item.sale_price}\t\tQty: #{invoice_item.quantity}"
puts "Category: #{invoice_item.categoryPath}"
end

invoice_total = invoice.items_total_amount
invoice_total2 = invoice.items_total_qty
puts "Sub-total: #{invoice_total.round(2)}"
puts "Tax: #{(invoice.tax_percentage * invoice_total).round(2)}"
puts "Total Amount Due: #{invoice_total.round(2) + (invoice.tax_percentage * invoice_total).round(2)} "
puts "Total Qty: #{invoice_total2}"
