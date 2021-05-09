require 'rails_helper'

RSpec.describe GroupsController, :type => :routing do
   describe "routing" do
      it "routes to #new" do
         expect(:get => "/groups/new").to route_to("groups#new")
      end

      it "routes to #index" do
         expect(:get => "/groups").to route_to("groups#index")
      end

   end
end