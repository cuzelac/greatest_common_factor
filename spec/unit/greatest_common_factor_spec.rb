require 'spec_helper'

describe GreatestCommonFactor do
  let (:gcf) { described_class.new }

  describe '#find_all_factors' do
    it 'takes an integer and returs an array of all factors' do
      expect(gcf.find_all_factors(1)).to match_array([1])
      expect(gcf.find_all_factors(3)).to match_array([1, 3])
      expect(gcf.find_all_factors(10)).to match_array([1, 2, 5, 10])
    end
  end

  describe '#greatest_common_factor' do
    it 'takes an array of integers and returns the greatest common factor' do
      expect(gcf.greatest_common_factor([1, 1])).to eq(1)
      expect(gcf.greatest_common_factor([1, 2])).to eq(1)
      expect(gcf.greatest_common_factor([3, 6, 9])).to eq(3)
      expect(gcf.greatest_common_factor([50, 100, 125])).to eq(25)
    end
  end

  describe '#ratio' do
    it 'takes an array of integers and returns their ratios' do
      expect(gcf.ratio([1, 3, 5])).to eq([1, 3, 5])
      expect(gcf.ratio([50, 100, 125])).to eq([2, 4, 5])
    end
  end
end
