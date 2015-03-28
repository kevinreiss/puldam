require 'rails_helper'

RSpec.describe HomepageController, type: :controller do

  describe "GET #index" do
    let(:user) { FactoryGirl.find_or_create(:jill) }
    before do
      sign_in user
    end

    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
