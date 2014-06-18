require_relative "testing_library"

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]

def how_many_dogs(dogs)
  dogs.length
end


def name_lengths(dogs)
  # length_array = []
  # dogs.each { |dog| length_array << dog.length }
  # length_array

  dogs.collect { |dog| dog.length }
end

def reverse_dog_names(dogs)
  # reversed_array = []
  # dogs.each { |dog| reversed_array << dog.reverse }
  # reversed_array

  dogs.collect { |dog|  dog.reverse }
end

def first_three_dogs_with_each(dogs)
  three_dog_array = []
  dogs.each do |dog|
    three_dog_array << dog
    break if three_dog_array.length == 3
  end
  three_dog_array
end

def first_three_dogs_without_each(dogs)
  dogs[0..2]
end

def reverse_case_dog_names(dogs)
  # swapped_array = []
  # dogs.each { |dog| swapped_array << dog.swapcase }
  # swapped_array

  dogs.collect { |dog| dog.swapcase }
end

def sum_of_all_dog_name_lengths(dogs)
  # sum_of_dog_names = 0
  # dogs.each { |dog| sum_of_dog_names += dog.length }
  # sum_of_dog_names

  dogs.inject(0) { |sum, dog| sum += dog.length  }
end

def dogs_with_long_names(dogs)
  long_length = 4

  # truth_array = []
  # dogs.each do |dog|
  #   the_truth = dog.length > long_length
  #   truth_array << the_truth
  # end
  # truth_array

  dogs.collect { |dog| dog.length > long_length }
end

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80

confused_people = ["Me"]

check("how_many_dogs", how_many_dogs(dogs) == 6)
check("how_many_confused people", how_many_dogs(confused_people) == 1)

check("name_lengths", name_lengths(dogs) == [4, 8, 4, 6, 4, 7])
check("reverse_dog_names", reverse_dog_names(dogs) == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
check("first_three_dogs_with_each", first_three_dogs_with_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("first_three_dogs_without_each", first_three_dogs_without_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("reverse_case_dog_names", reverse_case_dog_names(dogs) == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs) == 33)
check("dogs_with_long_names", dogs_with_long_names(dogs) == [false, true, false, true, false, true])

