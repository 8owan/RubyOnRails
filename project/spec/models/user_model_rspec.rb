require 'rails_helper'

RSpec.describe User, :type => :model do
  
  it "is not valid without attributes" do
  expect(User.new).to_not be_valid
  end

  it "is valid with attributes" do
  expect(User.new(email: 'rowan@email.com', password: '123478', username: 'rowan')).to be_valid
  end
end