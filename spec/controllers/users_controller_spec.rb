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

end
