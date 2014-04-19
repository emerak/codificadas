class Polynomial
  attr_accessor :arr, :lenght, :pol
  def initialize(arr)
    @lenght = arr.length
    @arr = arr
    @sign = []
    evaluate_coeficient
    sign
    exponent
    puts @sign.join
  end

  #refactorrrrrr!

  def evaluate_coeficient
    @arr.map do |a|
      case (a).abs
      when 1
        @sign << ""
      when 0
        @sign << nil
      else
        @sign << a
      end
    end
  end

  def exponent
    @sign.map!.with_index do |a,i|
      unless a == nil
        if (@sign.length-i-1) < 1
          a
        else
          "#{a}x^#{@sign.length-i-1}"
        end
      end
    end
  end

  def sign
   @sign.map!.with_index do |a,i|
     unless a == nil
       if i == 0
         "#{a}"
       elsif (a.is_a? String) || (a >= 1)
         "+#{a}"
       else
         a
       end
     end
   end
  end

end
