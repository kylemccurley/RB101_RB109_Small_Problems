=begin
  Input: - Array
  Output: - String
  
  Rules/Requirements:
    - Counts the number of occurences of each element in a given array
    - Print each element alongside the number of occurences.
    - Words in the array are case-sensitive.

  Data Structure:
    - Arrays
    - Strings
    - Hashes

  Algorithm:

    Given an array: arr
      - Initialize an output hash: output
      - Iterate through the unique values of the array (Array#uniq#each)
        - Store the uniq value as a key, the occurances as a value.
      
      - Iterate through the keys and values of the hash (Hash#each |k, v|)
        - Print the key and value separated by a rocket hash.
=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  output = {}
  arr.uniq.each { |vehicle| output[vehicle] = arr.count(vehicle) }

  output.each { |vehicle, occurances| puts "#{vehicle} => #{occurances}" }
end

count_occurrences(vehicles)