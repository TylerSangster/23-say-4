class Say
  # I used a hash instead of an array so I could map each
  # number to it`s own english word.
  ENGLISH = {
     0 => 'zero ', 1 => 'one ', 2 => 'two ', 3 => 'three ', 4 => 'four ', 5 => 'five ',
     6 => 'six ', 7 => 'seven ', 8 => 'eight ', 9 => 'nine ',

     10 => 'ten ', 11 => 'eleven ', 12 => 'twelve ', 13 => 'thirteen ',
     14 => 'fourteen ', 15 => 'fifteen ', 16 => 'sixteen ',
     17 => 'seventeen ', 18 => 'eighteen ', 19 => 'ninteen ',

     20 => 'twenty ', 30 => 'thirty ', 40 => 'forty ',
     50 => 'fifty ', 60 => 'sixty ', 70 => 'seventy ',
     80 => 'eighty ', 90 => 'ninety ',

     100 => 'one hundred ',     200 => 'two hundred ',
     300 => 'three hundred ',   400 => 'four hundred ',
     500 => 'five hundred ',    600 => 'six hundred ',
     700 => 'seven hundred ',   800 => 'eight hundred ',
     900 => 'nine hundred ',
     1000 => 'thousand ', 1000000 => 'million '
  } 

  def initialize(num)
    @number = num
  end

  def in_english()
    if @number < 0 || @number > 999999999
    	puts "#{@number} is not within the range of  0 - 99999999999"
      raise ArgumentError, "Number is out of range "
    elsif @number > 1000000 && @number < 1000000000
      puts @number%1000000
        _in_english(@number/1000000) + _in_english((@number%1000000)/1000+1000000) + _in_english(@number%1000+1000)
    elsif @number > 1000 && @number < 1000000
        _in_english(@number/1000) + _in_english(@number%1000+1000)
    else
    	_in_english(@number)
    end
  end
  
#########################
# Private Methods
#########################

  private
	  def _in_english(number)
	    index = ENGLISH.keys.select {|n| n <= number}.max
	    ENGLISH[index] + (index < number ? _in_english(number-index) : '')
    end
end

tyler = Say.new(273495847)
puts tyler.in_english