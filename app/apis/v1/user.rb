module V1
  class User < Grape::API
    desc "Create User", {
      params: Entities::User.documentation
    }
    #create
    post :user do
      present client, with: Entities::User
    end
  end
end
