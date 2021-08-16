require 'spec_helper'

RSpec.describe Customer do
  describe '#initialize' do
    it 'returns valid value' do
      customer = Customer.new('Bob')
      expect(customer.name).to eq('Bob')
    end
  end

  describe '#statement' do
    let!(:customer) { Customer.new('Bob') }

    context 'レギュラーを2日借りる時' do
      it 'returns valid value' do
        movie  = Movie.new('映画名', Movie::REGULAR)
        rental = Rental.new(movie, 2)

        customer.add_rental(rental)
        expect(customer.statement).to eq("Rental Record for Bob\n\t映画名\t2\nAmount owed is 2\nYou earnted 1 frequent renter points")
      end
    end

    context 'レギュラーを3日借りる時' do
      it 'returns valid value' do
        movie  = Movie.new('映画名', Movie::REGULAR)
        rental = Rental.new(movie, 3)

        customer.add_rental(rental)
        expect(customer.statement).to eq("Rental Record for Bob\n\t映画名\t3.5\nAmount owed is 3.5\nYou earnted 1 frequent renter points")
      end
    end

    context '新作を1日借りる時' do
      it 'returns valid value' do
        movie  = Movie.new('映画名', Movie::NEW_RELEASE)
        rental = Rental.new(movie, 1)

        customer.add_rental(rental)
        expect(customer.statement).to eq("Rental Record for Bob\n\t映画名\t3\nAmount owed is 3\nYou earnted 1 frequent renter points")
      end
    end

    context '新作を2日借りる時' do
      it 'returns valid value' do
        movie  = Movie.new('映画名', Movie::NEW_RELEASE)
        rental = Rental.new(movie, 2)

        customer.add_rental(rental)
        expect(customer.statement).to eq("Rental Record for Bob\n\t映画名\t6\nAmount owed is 6\nYou earnted 2 frequent renter points")
      end
    end

    context '子供向けを3日借りる時' do
      it 'returns valid value' do
        movie  = Movie.new('映画名', Movie::CHILDRENS)
        rental = Rental.new(movie, 3)

        customer.add_rental(rental)
        expect(customer.statement).to eq("Rental Record for Bob\n\t映画名\t1.5\nAmount owed is 1.5\nYou earnted 1 frequent renter points")
      end
    end

    context '子供向けを4日借りる時' do
      it 'returns valid value' do
        movie  = Movie.new('映画名', Movie::CHILDRENS)
        rental = Rental.new(movie, 4)

        customer.add_rental(rental)
        expect(customer.statement).to eq("Rental Record for Bob\n\t映画名\t3.0\nAmount owed is 3.0\nYou earnted 1 frequent renter points")
      end
    end
  end
end