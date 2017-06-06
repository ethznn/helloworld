class HomeController < ApplicationController
  def keyboard
    keyboard = {"type" => "buttons","buttons" => ["주사위", "선택 2", "선택 3"]}
    render json: keyboard
  end
  
  def message
    user_msg = params[:content]
    
    case user_msg
      when "주사위"
        return_msg = rand(1..6)
      else
        return_msg = "다른버튼"
    end
    keyboard_massage = {"type" => "buttons","buttons" => ["주사위", "선택 2", "선택 3"]}
    message = {"message" =>{"text"=> "#{return_msg}"}, "keyboard" => keyboard_massage}
    render json: message
  end
end
