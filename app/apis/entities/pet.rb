module Entities
  class Pet < Grape::Entity
    expose :id, documentation: { type: "integer", required: true, desc: "unique identifier for the pet" }
    expose :category, using: Entities::Category, documentation: { type: "Category" }
    expose :name, documentation: { type: "string", required: true }
    expose :photoUrls, documentation: { type: "string", is_array: true }
    expose :tags, using: Entities::Tag, documentation: { type: "Tag", is_array: true }
    expose :status, documentation: { type: "string", desc: "pet status in the store", enum: [ "available", "pending", "sold" ] }
  end
end
