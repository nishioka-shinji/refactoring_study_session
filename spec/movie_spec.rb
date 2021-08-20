require 'spec_helper'

RSpec.describe Movie do
  describe '#initialize' do
    it 'returns valid value' do
      movie = Movie.new('映画名', NewReleasePrice.new)
      expect(movie.title).to eq('映画名')
    end
  end
end