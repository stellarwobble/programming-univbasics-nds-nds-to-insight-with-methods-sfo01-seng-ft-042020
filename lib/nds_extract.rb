$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
 
  row = 0 
  director_data = {}
  while row < directors_database.count do
    column = 0 
    while column < directors_database[row].count do
	movies = 0
	gross_sales = 0
	while movies < directors_database[row][:movies].count do
	gross_sales += directors_databse[row][:movies][movies][:worldiwde_gross]
	movies += 1
	end
	results[nds[row][:name]] = gross_sales
	row += 1
	end
results
end
      
      
      


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
end
