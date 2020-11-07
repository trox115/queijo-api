require "rails_helper"

RSpec.describe QueijosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/queijos").to route_to("queijos#index")
    end

    it "routes to #new" do
      expect(get: "/queijos/new").to route_to("queijos#new")
    end

    it "routes to #show" do
      expect(get: "/queijos/1").to route_to("queijos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/queijos/1/edit").to route_to("queijos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/queijos").to route_to("queijos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/queijos/1").to route_to("queijos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/queijos/1").to route_to("queijos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/queijos/1").to route_to("queijos#destroy", id: "1")
    end
  end
end
