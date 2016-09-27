def add (a, b)
	a + b
end

def subtract (a,b)
	a - b
end

varr = []
def sum (varr)
	v = 0
	varr.each {|item| v = v + item }
	return v
end

def multiply (a, b)
	return a * b
end

def multiplyMany (varr)
	v = 1
	varr.each {|item| v = v * item }
	return v
end

def power (a,b)
	a**b
end

def factorialf(n)
  (1..n).inject(:*) || 1
end