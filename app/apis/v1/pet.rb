module V1
  class Pet < Grape::API

    # get /pet/{petId}
    desc "Find pet by ID", {
      nickname: "getPetById",
      entity: Entities::Pet,
      notes: "Returns a pet based on ID",
      http_codes: {
        400 => "Invalid ID supplied",
        404 => "Pet not found",
      }
    }
    params do
      requires :petId, type: Integer, desc: "ID of pet that needs to be fetched"
    end
    get "/pet/:petId" do
    end

    # delete /pet/{petId}
    desc "Deletes a pet", {
      nickname: "deletePet",
      http_codes: {
        400 => "Invalid ID supplied",
      }
    }
    params do
      requires :petId, type: Integer, desc: "Pet id to delete"
    end
    delete "/pet/:petId" do
    end

    # patch /pet/{petId}
    desc "partial updates to a pet", {
      nickname: "partialUpdate",
      entity: Entities::Pet,
      is_array: true,
      http_codes: {
        400 => "Invalid tag value",
      }
    }
    params do
      requires :petId, type: Integer, desc: "ID of pet that needs to be fetched"
      requires :data, type: String, desc: "Pet object that needs to be added to the store"
    end
    patch "/pet/:petId" do
    end

    # post /pet/{petId}
    desc "Updates a pet in the store with form data", {
      nickname: "updatePetWithForm",
      http_codes: {
        405 => "Invalid input",
      }
    }
    params do
      requires :petId, type: Integer, desc: "ID of pet that needs to be updated"
      optional :name, type: String, desc: "Updated name of the pet"
      optional :status, type: String, desc: "Updated status of the pet"
    end
    post "/pet/:petId" do
    end

    # post /pet/uploadImage
    desc "uploads an image", {
      nickname: "uploadFile",
    }
    params do
      optional :additionalMetadata, type: String, desc: "Additional data to pass to server"
      optional :file, type: Rack::Multipart::UploadedFile, desc: "file to upload"
    end
    post "/pet/uploadImage" do
    end

    # post /pet
    desc "Add a new pet to the store", {
      nickname: "addPet",
      http_codes: {
        405 => "Invalid input",
      }
    }
    params do
      requires :data, type: String, desc: "Pet object that needs to be added to the store"
    end
    post :pet do
      pet = ::Pet.new(JSON.parse(params[:data]))
      present pet, with: Entities::Pet
    end

    # put /pet
    desc "Update an existing pet", {
      nickname: "updatePet",
      http_codes: {
        400 => "Invalid ID supplied",
        404 => "Pet not found",
        405 => "Validation exception",
      }
    }
    params do
      requires :body, type: Entities::Pet
    end
    put :pet do
      present ::Pet.find(params[:id]).update(params[:body]), with: Entities::Pet
    end

    # get /pet/findByStatus
    desc "Finds Pets by status", {
      nickname: "findPetsByStatus",
      entity: Entities::Pet,
      is_array: true,
      notes: "Multiple status values can be provided with comma seperated strings",
      http_codes: {
        400 => "Invalid status value",
      }
    }
    get "/pet/findByStatus" do
    end

    # get /pet/findByTags
    desc "Finds Pets by tags", {
      nickname: "findPetsByTags",
      entity: Entities::Pet,
      is_array: true,
      notes: "Muliple tags can be provided with comma seperated strings. Use tag1, tag2, tag3 for testing.",
      http_codes: {
        400 => "Invalid tag value",
      }
    }
    get "/pet/findByTags" do
    end

  end
end
