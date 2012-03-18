module Truthiness

  def truthy?
    !!self
  end

  def not_truthy?
    !self
  end
  alias_method :falsey?, :not_truthy?

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
