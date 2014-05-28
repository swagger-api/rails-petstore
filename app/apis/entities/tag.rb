module Entities
  class Tag < Grape::Entity
    expose :id, documentation: { type: "integer" }
    expose :name, documentation: { type: "string" }
  end
end
