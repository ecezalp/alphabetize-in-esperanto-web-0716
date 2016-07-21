def alphabetize(array)
  esp_string = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  esp_hash = {}
  esp_string.chars.each_with_index do |x, i|
    esp_hash[x] = i
  end

  n = array.length
  loop do
    swapped = false
    (n-1).times do |i|
      if esp_hash[array[i][0]] > esp_hash[array[i+1][0]]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      elsif esp_hash[array[i][0]] == esp_hash[array[i+1][0]]
        if esp_hash[array[i][1]] > esp_hash[array[i+1][1]]
          array[i], array[i+1] = array[i+1], array[i]
          swapped = true
        elsif esp_hash[array[i][5]] != nil && esp_hash[array[i][4]] == esp_hash[array[i+1][4]]
          if esp_hash[array[i][5]] > esp_hash[array[i+1][5]]
          array[i], array[i+1] = array[i+1], array[i]
          swapped = true
          elsif esp_hash[array[i][6]] != nil && esp_hash[array[i][5]] == esp_hash[array[i+1][5]]
            if esp_hash[array[i][6]] > esp_hash[array[i+1][6]]
            array[i], array[i+1] = array[i+1], array[i]
            swapped = true
            end
          end
        end
      end
    end
    break if !swapped
  end
  array
end
