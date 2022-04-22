require "rails_helper"

RSpec.describe OrdersMenusController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/orders_menus").to route_to("orders_menus#index")
    end

    it "routes to #new" do
      expect(get: "/orders_menus/new").to route_to("orders_menus#new")
    end

    it "routes to #show" do
      expect(get: "/orders_menus/1").to route_to("orders_menus#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/orders_menus/1/edit").to route_to("orders_menus#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/orders_menus").to route_to("orders_menus#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/orders_menus/1").to route_to("orders_menus#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/orders_menus/1").to route_to("orders_menus#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/orders_menus/1").to route_to("orders_menus#destroy", id: "1")
    end
  end
end
