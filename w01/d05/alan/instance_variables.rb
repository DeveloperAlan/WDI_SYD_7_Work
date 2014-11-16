class Car
  attr_accessor :current_speed

  def drive(speed)
    @current_speed = speed
  end

  def current_speed=(current_speed)
    @current_speed = current_speed
  end 
end