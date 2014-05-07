module V1
  class Store < Grape::API
    desc "Place an order for a pet", {
      params: Entities::Store.documentation
    }
    #create
    post :order do
      #code...
    end
  end
end
