require 'rails_helper'

RSpec.describe GroupsController, :type => :routing do
   describe "routing" do
      it "routes to #new" do
         expect(:get => "/groups/new").to route_to("groups#new")
      end

      it "routes to #index" do
         expect(:get => "/groups").to route_to("groups#index")
      end

      it "routes to #show" do
         expect(:get => "/groups/1").to route_to("groups#show", :id => "1")
      end

      it "routes to #edit" do
         expect(:get => "/groups/1/edit").to route_to("groups#edit", :id => "1")
      end
   end
end