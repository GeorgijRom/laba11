require './test/test_helper'
class Laba11ResultTest < ActiveSupport::TestCase
  test "Test new and find" do

    lo_calc = Laba11Result.new
    
    lo_calc.happy_numbers_quantity = 43
    
    lo_calc.result = '44test'
    
    assert lo_calc.save
    assert Laba11Result.find_by(happy_numbers_quantity: lo_calc.happy_numbers_quantity)
    
  end
  test "uniq" do

    lo_calc = Laba11Result.new

    lo_calc.happy_numbers_quantity = 43
    
    lo_calc.result = '44test'
    
    assert lo_calc.save

    lo_calc = Laba11Result.new

    lo_calc.happy_numbers_quantity = 43
    
    lo_calc.result = '43test'

    assert_not lo_calc.save
  end  

end
