#!/usr/bin/ruby
# http://www.nactem.ac.uk/software/acromine/rest.html

require 'net/http'
require 'json'

QUERY_URL = 'http://www.nactem.ac.uk/software/acromine/dictionary.py'

loop do
  puts "Please enter an acronym and I'll get the meaning of it (\\q to quit):"
  acronym = gets.chomp
  break if acronym == '\q'

  puts "Searching for #{acronym}..."

  uri = URI(QUERY_URL + "?sf=#{URI.escape(acronym)}")
  raw_json = Net::HTTP.get(uri)

  parsed_data = JSON.parse(raw_json)

  parsed_data.each do |row|
    puts row["sf"]
    row["lfs"].each do |lfs_row|
      puts lfs_row["lf"]
    end
  end
  puts "\n"
end
