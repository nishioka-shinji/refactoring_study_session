require 'spec_helper'

RSpec.describe Rental do
  describe '#initialize' do
    it 'returns valid value' do
      movie  = Movie.new('映画名', 1)
      rental = Rental.new(movie, 1)
      expect(rental.movie).to be_a(Movie)
      expect(rental.days_rented).to eq(1)
    end
  end
end