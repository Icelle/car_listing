require 'spec_helper'

describe Car do
  describe "validations" do
    let(:car) {FactoryGirl.build(:car)}

    it 'is valid when it has all required and valid attributes' do
      expect(car).to be_valid
    end

    it {should have_valid(:color).when('Blue')}
    it {should_not have_valid(:color).when('', nil)}
    it {should have_valid(:year).when(2001)}
    it {should_not have_valid(:year).when(1979)}
    it {should_not have_valid(:year).when(2052)}
    it {should have_valid(:mileage).when(50.5, 50)}
    it {should_not have_valid(:mileage).when('', nil, 'a', 0, -1.0)}
    it {should have_valid(:description).when('Sedan', '', nil)}
  end
end
