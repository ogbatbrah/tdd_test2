#[ "a", nil, "b", nil, "c", nil ].compact

 def arry_compact(names)
  names.delete_if{|v| v == nil}
end

def myrstrip(str)
	count = str.length - 1
	until str[count] != " "
		str = str.chop
		count -=1
	end
  str
end

   
