module Truthiness

  def truthy?
    self.to_s.match(/true|yes|1/i) != nil
  end

  def not_truthy?
    !truthy?
  end

  def falsey?
    self.to_s.match(/false|no|0/i) != nil
  end

  def not_falsey?
    !falsey?
  end

  def true?
    self == true
  end

  def not_true?
    !true?
  end

  def false?
    self == false
  end

  def not_false?
    !false?
  end

end

class Object
  include Truthiness
end
