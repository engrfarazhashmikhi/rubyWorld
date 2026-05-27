
class RubyExceptions
  def calc()

    calc = 34 / 0
    return calc

  end
end

begin

  rE = RubyExceptions.new() # Ruby Class Object.
  put "The answer is: #{rE.calc()}"; #Ruby Object Method Called

rescue Exception => e

  puts "Errr Occur: #{e}"

end

