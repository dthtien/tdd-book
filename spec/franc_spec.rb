require 'spec_helper'

describe Franc do
  describe '#times' do
    let(:amount) { 2 }
    let(:franc) { Money.franc amount }
    it 'returns correct value' do
      expect(franc.times 2).to eq Money.franc amount * 2
    end

    it 'returns correct value with multiple times' do
      expect(franc.times 2).to eq Money.franc amount * 2
      expect(franc.times 3).to eq Money.franc amount * 3
    end
  end

  describe "#=" do
    let(:amount) { 2 }
    let(:franc1) { Money.franc amount }
    let(:franc) { Money.franc amount }

    it 'returns equal if 2 franc have same amount' do
      expect(franc1).to eq franc
    end

    it 'returns false if difference currency' do
      dolar = Money.dolar amount
      expect(franc).not_to eq(dolar)
    end
  end
end
