class Franc
  attr_reader :amount

  def initialize(amount = 0)
    @amount = amount
  end

  def times(value)
    Franc.new amount * value
  end

  def ==(franc)
    return if !franc.is_a? Franc

    franc.amount == amount
  end
end
