def power(base, exponent)
	i = 0
	total = 1
	while i < exponent do 
		total = total * base
	i += 1
	end
total
end

def factorial(n)
	i = 1
	total = 1
	while i <= n do
		total = total * i
	i += 1
	end
total
end


def uniques(arr)
	new_arr = []
	arr.each do |x|
		unless new_arr.include?(x)
		new_arr << x
		end
	end
new_arr
end

def combinations(arr1, arr2)
	new_arr = []
	arr1.each do |x|
		i = 0
		while i < arr2.length do
		new_arr << x + arr2[i]
		i += 1
		end
	end
new_arr
end 

def is_prime?(n)
	i = 3
	while i < n do
		if n % i == 0
			return false	
		end
		i += 1
	end
true
end

def overlap(rect1, rect2)
	if rect2[0][0] < rect1[1][0] && rect2[0][1] < rect1[1][1]
		return true
	end
false
end



