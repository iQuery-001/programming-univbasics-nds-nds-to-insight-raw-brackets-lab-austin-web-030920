$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  count = 0
  result = {}
  total_gross = 0
  while count < directors_database[0].length do
    result[:director] = directors_database[count][:name]
    gross_counter = 0
      while gross_counter < directors_database[count][:movies].length do
        total_gross += directors_database[count][:movies][gross_counter][:worldwide_gross]
        gross_counter += 1
      end
    result[:directors_totals] = total_gross
    count += 1
  end
  result
end
