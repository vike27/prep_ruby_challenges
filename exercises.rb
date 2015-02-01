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


=begin
10 friends are sitting in a circle around a table and decide to play a new game. In it, they count up through the numbers from 1 to 100. The first person says "1", the second says "2" and so on... but with a few catches:

Whenever the number is divisible by 7, they switch directions. So person 6 will say "6", person 7 will say "7", then person 6 again will say "8".
Whenever the number is divisible by 11, they skip the next person for the following number. For instance, if person 3 says "33", person 5 will say "34" instead (person 4 gets skipped).
Your job is to code a program which outputs each number and which person said it. Use it to show that player 1 will say the number "100".
=end

friends_arr = []
n = 1
while n <= 10 do 
	friends_arr[n] = "friend #{n}"
	n += 1
end

all_num = {}
j = 1
while j <= 100 do 
	all_num[j] = "?"
	j += 1
end

direction = 1
friend = 1
1.upto(100) do |i|
	all_num[i] = friends_arr[friend]
	if i % 7 == 0 
		direction *= -1
	end
	if i % 11 == 0
		friend = friend + direction + direction
		if friend > 10 
			friend = 1
		elsif friend < 1
			friend = 10
		end
	else
		friend += direction
		if friend > 10 
			friend = 1
		elsif friend < 1
			friend = 10
		end
	end
end

###end of exercise










