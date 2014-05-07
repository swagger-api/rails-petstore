module Entities
  class Tag < Grape::Entity
    expose :id, documentation: {type: "integer", desc: "Tag ID", value: "0"}
    expose :name, documentation: {type: "string", desc: "Name"}
  end
end
