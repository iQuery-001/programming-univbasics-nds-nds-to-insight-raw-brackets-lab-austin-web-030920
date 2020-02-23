$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  count = 0
  result = {}
  while count < nds[count].length do
    gross_counter = 0
    total_gross = 0
      while gross_counter < nds[count][:movies].length do
        total_gross += nds[count][:movies][gross_counter][:worldwide_gross]
        gross_counter += 1
      end
    result[nds[count][:name]] = total_gross
    count += 1
  end
  result
end
