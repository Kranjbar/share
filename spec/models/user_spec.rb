require 'rails_helper'

RSpec.describe User, type: :model do

  # before do
		# user_params = Hash.new
		# user_params[:first_name] = FFaker::Name.first_name
		# user_params[:last_name] = FFaker::Name.last_name
		# user_params[:email] = FFaker::Internet.email
		# user_params[:password] = FFaker::Lorem.words(2).join

		# @user = User.new(user_params)
		# @user.save
		# p @user.inspect
  # end

  subject(:user) { FactoryGirl.create(:user) }


  describe User do
		it { should validate_presence_of(:first_name) }
		it { should validate_presence_of(:last_name) }
		it { should validate_presence_of(:email) }
		it { should validate_presence_of(:password) }

		# it { should validate_presence_of(:email with: /@/) }
  end

end
