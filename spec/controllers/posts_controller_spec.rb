require "rails_helper"

describe PostsController do
  describe "GET #index" do
    it "populates an array of posts" do
      post = Factory(:post)
      get :index
      assigns(:posts).should eq([post])
    end
    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end

  describe "GET #show" do
    it "assigns the requested contact to @post" do
      post = Factory(:post)
      get :show, id: post
      assigns(:post).should eq(post)
    end

    it "renders the #show view" do
      get :show, id: Factory(:post)
      response.should render_template :show
    end
  end

end
