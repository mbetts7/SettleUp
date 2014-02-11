require "spec_helper"
# include Devise::TestHelpers

describe IousController do

  describe "GET new" do
    before(:each) do
      @iou = mock_model("Iou")
      @user = User.create(first_name: 'Finn', last_name: 'Murray', email: 'FinnMurray@rhyta.com', phone: '678-791-3741', zip: '30303', password: 'password', password_confirmation: 'password')
      sign_in :user, @user
      allow(Iou).to receive(:new).and_return(@iou)
    end

    after(:each) do
      @user.destroy
    end
    
    it "should assign @iou" do
      get :new
      #checks if @iou is some instance of a Iou
      expect(assigns(:iou)).to eq(@iou) 
    end

    it "should render :new template" do
      get :new
      expect(response).to render_template("new")
    end

  end

  describe "Post create" do
    before(:each) do
      @iou = mock_model("Iou")
      @user = User.create(first_name: 'Finn', last_name: 'Murray', email: 'FinnMurray@rhyta.com', phone: '678-791-3741', zip: '30303', password: 'password', password_confirmation: 'password')
      sign_in :user, @user
      allow(Iou).to receive(:create)
    end

    after(:each) do
      @user.destroy
    end
    
    it "should create Iou" do
      #writing test
      expect(Iou).to receive(:create).with({"name" => "You owe me money!"})
      #causing test to run
      post :create, {iou: {"name" => "You owe me money!"}}
    end

    it "should redirect_to '/ious/new'" do
      post :create, {iou: {name: "You owe me money!"}}
      expect(response).to redirect_to("/ious/new")
    end

  end

end



