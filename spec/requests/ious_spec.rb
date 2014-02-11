require "spec_helper"
include Devise::TestHelpers

describe "Ious" do

  describe "GET /ious" do
    it "should be successful" do
      get ious_path
      response.status.should == 200
    end

    context "a bunch of ious" do
      (1..5).each do |i|
        Iou.create!(name: "Iou number: #{i}")
      end
    end

    it "displays ious" do
      Iou.create!(name: "You owe me for rent check")
      get ious_path 
      response.body.should include("You owe me for rent check")
    end
  end

end

    
#   describe "GET /todos/:id/show" do
#     context "given a todo id" do
#       before do
#         @todo = Todo.create!(title: "Green: Get the specs to pass")
#         get todos_path(@todo.id)
#       end

#       it "should be successful" do
#         response.status.should == 200
#       end

#       it "should display the todo" do
#         response.body.should include("Green: Get the specs to pass")
#       end
#     end
#   end

#   describe "POST /todos" do
#     context "given a todo in the params" do
#       before do
#         post todos_path, todo: { title: "Refactor: Clean up your code" }
#       end

#       it "should be successful" do
#         follow_redirect!
#         response.status.should == 200
#       end

#       it "should create the todo" do
#         follow_redirect!
#         response.body.should include("Refactor: Clean up your code")
#       end
#     end
#   end
# end
