$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
   results = Hash.new 
  row_index= 0 
  while row_index < director_data.count do
   movies = 0 
   gross_sales = 0 
   while movies < director_data[row_index][:movies].count do
     gross_sales += director_data[row_index][:movies][movies][:worldwide_gross]
     movies += 1 
   end
   results[director_data[row_index][:name]] = gross_sales
   row_index += 1 
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
