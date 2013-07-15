class Say
  # I used a hash instead of an array so I could map each
  # number to it`s own english word.
  ENGLISH = {
     0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five',
     6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine',

     10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen',
     14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen',
     17 => 'seventeen', 18 => 'eighteen', 19 => 'ninteen',

     20 => 'twenty', 30 => 'thirty', 40 => 'forty',
     50 => 'fifty', 60 => 'sixty', 70 => 'seventy',
     80 => 'eighty', 90 => 'ninety',

     # 100 => 'one hundred ',     200 => 'two hundred ',
     # 300 => 'three hundred ',   400 => 'four hundred ',
     # 500 => 'five hundred ',    600 => 'six hundred ',
     # 700 => 'seven hundred ',   800 => 'eight hundred ',
     # 900 => 'nine hundred '
  }
  
  def initialize(num)
    @number = num
  end

  def in_english()

    #check to see if the number is less then 0
    #take the absolute value of a number
    if @number < 0 || @number > 99
    	puts "#{@number} is not within the range of  0 - 99"
        raise ArgumentError, "Number is out of range "
    else
    	_in_english(@number)
    end
  end
  
#########################
# Private Methods
#########################

  private
	  def _in_english(number)
	    # First all the keys from my hash that are less than or Equal to my number.
	    # Then with the .max I take the largest of them in index
	    # example number = 156  index=100
	    index = ENGLISH.keys.select {|n| n <= number}.max

	    # This uses recursion to break the problem into steps.
	    # I have already found the first digit now I run the method
	    # again to find the next digit until I have found complete answer.
	    ENGLISH[index] + (index < number ? " " +  _in_english(number-index) : '')
	  end
end