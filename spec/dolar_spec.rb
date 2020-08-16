require 'spec_helper'

describe Dolar do
  describe '#times' do
    let(:amount) { 2 }
    let(:dolar) { Money.dolar amount }
    it 'returns correct value' do
      expect(dolar.times 2).to eq Money.dolar(amount * 2)
    end

    it 'returns correct value with multiple times' do
      expect(dolar.times 2).to eq Money.dolar amount * 2
      expect(dolar.times 3).to eq Money.dolar amount * 3
    end
  end

  describe "#==" do
    let(:amount) { 2 }
    let(:dolar1) { Money.dolar amount }
    let(:dolar2) { Money.dolar amount }

    it 'returns equal if 2 dolar have same amount' do
      expect(dolar1).to eq dolar2
    end

    it 'returns false if difference currency' do
      franc = Money.franc amount
      expect(franc).not_to eq(dolar2)
    end
  end
end
