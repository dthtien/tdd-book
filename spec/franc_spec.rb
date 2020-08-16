require 'spec_helper'
require_relative '../src/franc.rb'

describe Franc do
  describe '#times' do
    let(:amount) { 2 }
    let(:franc) { Franc.new amount }
    it 'returns correct value' do
      expect(franc.times 2).to eq Franc.new amount * 2
    end

    it 'returns correct value with multiple times' do
      expect(franc.times 2).to eq Franc.new amount * 2
      expect(franc.times 3).to eq Franc.new amount * 3
    end
  end

  describe "#=" do
    let(:amount) { 2 }
    let(:franc1) { Franc.new amount }
    let(:franc) { Franc.new amount }

    it 'returns equal if 2 franc have same amount' do
      expect(franc1).to eq franc
    end
  end
end
