class Money
  USD = 'USD'.freeze
  CHF = 'CHF'.freeze
  attr_reader :amount, :code

  def initialize(amount = 0, code)
    @amount = amount
    @code = code
  end

  def times(value)
    self.class.new(amount * value, code)
  end

  def self.dolar(value)
    Dolar.new(value, USD)
  end

  def self.franc(value)
    Franc.new(value, CHF)
  end

  def to_s
    "#{amount} #{code}"
  end

  def ==(money)
    return if !money.is_a? self.class

    money.amount == self.amount
  end
end

class Franc < Money; end
class Dolar < Money; end

