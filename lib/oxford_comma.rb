=begin
def oxford_comma(array)
  return array.join(' and ') if array.size < 3
  array[-1] = "and " + array[-1]
  array.join(', ')
end
=end

=begin
def oxford_comma(array)
  array = [*array]
  case array.size
  when 0
    ''
  when 1
    array[0].to_s
  when 2
    array.join(' and ')
  else
    array_copy = array
    array_copy[-1] = "and #{array_copy[-1]}"
    array_copy.join(', ')
  end
end
=end

def oxford_comma(array)
  if array.length == 2
  array[-2] << " and "
  array.join
  elsif array.length == 1
  	array.join
  elsif array.length > 2
    array[-1].prepend "and "
	array.join(", ")
  end
end
