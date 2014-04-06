require 'spec_helper'

describe Api::Admin::ArticlesController do
  it "should be able to create a new article" do
    post :create, article: {title: "New article"}, format: :json
    response.should be_success
    # JSON.parse(response.body).should == {'title' => "New article"}
    expect(json_response).to have_key('title')
  end
end
