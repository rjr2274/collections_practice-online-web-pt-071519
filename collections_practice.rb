require "pry"
def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort.reverse
end

def sort_array_char_count(array)
  array.sort_by {|word| word.length}
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  new_array = []
  array.each do |word|
    broken_word = []
    broken_word << word
    broken_word = word.split("")
    broken_word[2] = "$"
    new_array << broken_word.join("")
  end
  new_array
end

def find_a(array)
  new_array = []
  array.each do |word|
    new_array << word if word.start_with?("a")
  end
  new_array
end

def sum_array(array)
  array.inject do |sum, num| sum + num
  end
end

def add_s(array)
  array.each_with_index.collect do |word, index|
    if index == 1
      word
    else
      word + "s"
    end
  end
end
