require 'spec_helper'
require_relative '../src/dolar.rb'

describe Dolar do
  describe '#times' do
    let(:amount) { 2 }
    let(:dolar) { Dolar.new amount }
    it 'returns correct value' do
      dolar.times(2)
      dolar.times 3
      expect(dolar.amount).to eq amount * 2 * 3
    end
  end

  describe "#=" do
    let(:amount) { 2 }
    let(:dolar1) { Dolar.new amount }
    let(:dolar2) { Dolar.new amount }

    it 'returns equal if 2 dolar have same amount' do
      expect(dolar1).to eq dolar2
    end
  end
end
