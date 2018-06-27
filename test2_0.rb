# def check_for_match(myticket, winningticket)
#   my_ticket = myticket.split('')
#   puts "myticket is #{my_ticket}"
#   winning_ticket = winningticket.split('')
#   puts "winning_ticket is #{winningticket}"
#       matching_num = 0
#    winning_ticket_with_index.each do |num, index|
#   	puts "num is #{num} index is #{index}"
#    if num = myticket[index]
#       	matching_num = +1
#      end
#    end
#  matching_num
#  end

#  def check_for_match_arr(myticketarray, winningticket)
#  	empty = []
#  	myticketarray.each do |num|
#  		check_for_match(num, winningticket)
#  		if check_for_match(num, winningticket) == 1
#  		empty << num
#        end
#       end
#      empty
# end

#  def check_for_match_arr_2(myticketarray, winningticket)
#  	empty = []
#  	myticketarray.each do |num|
#  	  num << check_for_match(num, winningticket)
#  	end
#  	empty
#  end

#  def winarr(myticketarray, winningticket)
#  	warr = []
#  	winningticket.each do |num|
#  		matches = check_for_match_arr_2(myticketarray, num)
#  		winners = 0
#  		matches.each do |m|
#  			if m == 0
#  				winners += 1
#  			end
#  			warr << winners
#  		end
#  		warr
#  	end
#  end

def check_for_match(myticket, winningticket)
   my_ticket = myticket.split('')
   winning_ticket = winningticket.split('')
   matching_num = 0
   winning_ticket.each_with_index do |num, index|
        unless num == myticket[index]
            matching_num = matching_num + 1
        end
    end
    matching_num
end

def check_for_match_arr(myticketarray, winningticket)
    empty = []
    myticketarray.each do |num| 
     check_for_match(num, winningticket)
     if check_for_match(num, winningticket) == 1
        empty << num
     end 
    end
    empty
end

def check_for_match_arr_2(myticketarray, winningticket)
    empty = []
    myticketarray.each do |num|
      empty << check_for_match(num, winningticket)
    end
    empty
end

def winarr(myticketarray, winningticket)
    warr = []
    winningticket.each do |num|
        matches = check_for_match_arr_2(myticketarray, num)
        winners = 0
        matches.each do |m|
            if m == 0
                winners += 1
            end
        end
        warr << winners
    end
    warr 
end


