require 'spec_helper'

describe ManageGroupController do

  describe "GET 'manage'" do
    it "returns http success" do
      get 'manage'
      response.should be_success
    end
  end

end
