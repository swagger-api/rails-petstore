module Entities
  class User < Grape::Entity
    expose :id, documentation: {type: "integer", desc: "User ID", value: "0"}
    expose :first_name, documentation: {type: "string", desc: "First Name"}
    expose :last_name, documentation: {type: "string", desc: "Last Name"}
    expose :user_name, documentation: {type: "string", desc: "User Name"}
    expose :email, documentation: {type: "string", desc: "Email"}
    expose :password, documentation: {type: "string", desc: "Password"}
    expose :phone, documentation: {type: "string", desc: "Phone"}
    expose :user_status, documentation: {type: "string", desc: "User Statuses"}
  end
end
