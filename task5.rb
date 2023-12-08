def counting_sort(a, min, max)
  if min>max
    puts "invalid range"
    return
  end
  n = max - min + 1
	count = Array.new(n, 0)
	len = a.length
	output = Array.new(len)
 	(0...len).each do |i|
		count[a[i]-min] += 1
	end
 	(1...n).each do |i|
		count[i] += count[i-1]
	end
	(0...len).each do |i|
		output[count[a[i]-min]-1] = a[i]
		count[a[i]-min] -= 1
	end
	(0...len).each do |i|
		a[i] = output[i]
	end
end

if __FILE__ == $0
	mas = [9,9,3,4,5,1,0,10]
	min = 0
	max = 10
	puts 'Mas before:'
	print mas
	counting_sort(mas, min, max)
	puts "\nMas after:"
	print mas
end