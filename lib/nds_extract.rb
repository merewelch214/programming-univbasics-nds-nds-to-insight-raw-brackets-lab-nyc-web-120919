$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  row_index = 0 
  gross = 0
  dir_hash = {}
  
  while row_index < directors_database.length do
    
    column_item = 0 
    
    while column_item < directors_database[row_index].length do
     
     gross += directors_database[row_index][:worldwide_gross]
     column_item += 1
    
    end
    
    dir_hash = {directors_database[row_index] => gross}
    row_index += 1
    gross = 0
  
  end
  
  return dir_hash 
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #result = {}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  #nil
end
