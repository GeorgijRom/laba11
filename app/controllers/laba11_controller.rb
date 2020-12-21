class Laba11Controller < ApplicationController
  def input
    render layout: false    
  end

  def view

    happy_numbers_quantity = params[:happy_numbers_quantity].to_i

    if res = Laba11Result.find_by(happy_numbers_quantity: happy_numbers_quantity)
      @result = ActiveSupport::JSON.decode(res.result)
    else
      lv_left = 0
      lv_right = 0
      lv_count = 0
      lt_happy = []
      lv_happy = ''
    
      (0..999).each do |i|
          (0..999).each do |j|
              lv_left   = i / 100 + i / 10 % 10 + i % 10
              lv_right = j / 100 + j / 10 % 10 + j % 10
              if lv_left == lv_right
                  lv_count = lv_count + 1
                  lv_happy = (i / 100).to_s + (i / 10 % 10).to_s + (i % 10).to_s +  (j / 100).to_s + (j / 10 % 10).to_s + (j % 10).to_s
                  lt_happy << lv_happy
              end
              if lv_count == happy_numbers_quantity
              break
              end
          end
      end
      
      @result = lt_happy
      res = Laba11Result.create :happy_numbers_quantity => happy_numbers_quantity,
                                :result => ActiveSupport::JSON.encode(@result)
      res.save

    end
    respond_to do |format|
      format.html 
      format.json do
        render json:
        {type: @result.class.to_s, value: @result}
      end
    end 
  
  end

end
