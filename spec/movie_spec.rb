require 'spec_helper'

RSpec.describe Movie do
  describe '#initialize' do
    it 'returns valid value' do
      movie = Movie.new('映画名', 1)
      expect(movie.title).to eq('映画名')
      expect(movie.price_code).to eq(1)
    end
  end
end