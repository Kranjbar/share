require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:signed_in_user) { FactoryGirl.create(:user) }

  before do
    # stub a method on ApplicationController
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(signed_in_user)
  end

  describe "GET #index" do
    it "assigns @users" do
      all_users = User.all
      get :index
      expect(assigns(:users)).to eq(all_users)
    end

    it "renders the :index view" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "#show" do
    let(:user) { FactoryGirl.create(:user) }

    before do
      get :show, id: user.id
    end

    it "assigns @user" do
      expect(assigns(:user)).to eq(user)
    end

    it "renders the :show view" do
      expect(response).to render_template(:show)
    end
  end

describe "#edit" do
    let(:user) { FactoryGirl.create(:user) }
    before do
      get :edit, id: user.id
    end

    it "should assign @user" do
      expect(assigns(:user)).to eq(user)
    end

    it "should render the :edit view" do
      expect(response).to render_template(:edit)
    end
  end

  # describe "#destroy" do
  #   let!(:user) { FactoryGirl.create(:user) }
  #   let!(:users_count) { User.count }

  #   before do
  #     delete :destroy, id: user.id
  #   end

  #   it "removes the user from the database" do
  #     expect(User.count).to eq(users_count - 1)
  #   end
  # end

end
