class Building
  attr_accessor :address, :style, :has_doorman, :is_walkup, :apartment

  def initialize(address, style, has_doorman, is_walkup)
    self.address = address
    self.style = style
    self.has_doorman = has_doorman
    self.is_walkup = is_walkup
  end 

  def to_s
    string = "Building:"
    string += "\n Address: #{self.address}"
  end 


end