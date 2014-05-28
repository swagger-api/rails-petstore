module V1
  class User < Grape::API

    # put /user/{username}
    desc "Updated user", {
      nickname: "updatePet",
      http_codes: {
        400 => "Invalid username supplied",
        404 => "User not found",
      }
    }
    params do
      requires :username, type: String, desc: "name that need to be deleted"
      requires :body, type: Entities::Pet
    end
    put "/user/:username" do
    end

    # delete /user/{username}
    desc "Delete user", {
      nickname: "deletePet",
      http_codes: {
        400 => "Invalid username supplied",
        404 => "User not found",
      }
    }
    params do
      requires :username, type: String, desc: "The name that needs to be deleted"
    end
    delete "/user/:username" do
    end

    # get /user/{username}
    desc "Get user by user name", {
      nickname: "getPetById",
      entity: "Entities::User",
      http_codes: {
        400 => "Invalid username supplied",
        404 => "User not found",
      }
    }
    params do
      requires :username, type: String, desc: "The name that needs to be fetched. Use user1 for testing."
    end
    get "/user/:username" do
    end

    # get /user/login
    desc "Logs user into the system", {
      nickname: "getPetById",
      entity: "string",
      http_codes: {
        400 => "Invalid username and password combination",
      }
    }
    params do
      requires :username, type: String, desc: "The user name for login"
      requires :password, type: String, desc: "The password for login in clear text"
    end
    get "/user/login" do
    end

    # get /user/logout
    desc "Logs out current logged in user session", {
      nickname: "getPetById",
    }
    get "/user/logout" do
    end

    # post /user
    desc "Create user", {
      nickname: "addPet",
    }
    params do
      requires :body, type: Entities::User, desc: "Created user object"
    end
    post :user do
    end

  end
end
