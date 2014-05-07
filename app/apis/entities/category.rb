module Entities
  class Category < Grape::Entity
    expose :id, documentation: {type: "integer", desc: "Category ID", value: "0"}
    expose :name, documentation: {type: "string", desc: "Name"}
  end
end
