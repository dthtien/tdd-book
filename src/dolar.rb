class Dolar
  attr_reader :amount

  def initialize(amount = 0)
    @amount = amount
  end

  def times(value)
    @amount *= value
  end

  def ==(dolar)
    return if !dolar.is_a? Dolar

    dolar.amount == self.amount
  end
end
