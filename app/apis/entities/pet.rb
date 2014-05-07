module Entities
  class Pet < Grape::Entity
    expose :id, documentation: {type: "integer", desc: "ID"}
    expose :name, documentation: {type: "string", desc: "Name", required: true}
    expose :category, using: Entities::Category, documentation: {type: 'Category', desc: 'Category.', param_type: 'body', is_array: true}
    expose :tag, using: Entities::Tag, documentation: {type: 'Tag', desc: 'tag.', param_type: 'body', is_array: true}
  end
end
