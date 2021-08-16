require 'spec_helper'

RSpec.describe Customer do
  describe '#initialize' do
    it 'returns valid value' do
      customer = Customer.new('Bob')
      expect(customer.name).to eq('Bob')
    end
  end
end