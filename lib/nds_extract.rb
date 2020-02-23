$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  count = 0
  result = {}
  while count < directors_database[0].length do
    gross_counter = 0
    total_gross = 0
      while gross_counter < directors_database[count][:movies].length do
        total_gross += directors_database[count][:movies][gross_counter][:worldwide_gross]
        gross_counter += 1
      end
    result[directors_database[count][:name]] = total_gross
    count += 1
  end
  result
end
