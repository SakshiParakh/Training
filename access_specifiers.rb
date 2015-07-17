class Father
  def last_name
    p "parakh"
  end
  def get_tooth_brush
    tooth_brush
  end

  protected

  def car
    p "honda"
  end

  def money
    p "i need money"
  end

  private

  def tooth_brush
    p "its mine"
  end

end

class Son < Father
  def lets_drive
   car
  end

  def get_money(son)
    son.money
  end

end

class Friend
  def borrow_car(shreyansh)
    shreyansh.lets_drive
  end

  def borrow_money(son)
    son.get_money(son)
  end
end
shreyansh = Son.new
shishir = Son.new
#shreyansh.car
#shreyansh.last_name
shreyansh.lets_drive
naresh = Friend.new.borrow_money(shreyansh)
shreyansh.get_money(shishir)
rajiv = Father.new
leena = Father.new
rajiv.get_tooth_brush
rajiv.car

