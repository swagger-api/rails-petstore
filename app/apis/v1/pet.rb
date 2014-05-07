module V1
  class Pet < Grape::API
    desc "Add a new pet to the store", {
      params: Entities::Pet.documentation
    }
    #create
    post :pet do
      present client, with: Entities::Pet
    end

    desc "Update an existing pet", {
      params: Entities::Pet.documentation
    }
    #update
    put :pet do
      present client, with: Entities::Pet
    end
  end
end
