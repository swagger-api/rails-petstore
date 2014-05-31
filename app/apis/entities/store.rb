module Entities
  class Store < Grape::Entity
    expose :id, documentation: { type: "integer", desc: "ID" }
    expose :pet_id, documentation: { type: "integer", desc: "PET ID" }
    expose :quantity, documentation: { type: "string", desc: "Quantity" }
    expose :status, documentation: { type: "string", desc: "Status" }
    expose :ship_date, documentation: { type: "string", desc: "Ship Date" }
  end
end
