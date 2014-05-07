module V1
  class Base < Grape::API
    version 'v1', using: :header, vendor: 'pet-store', format: :json, cascade: true

    mount V1::Pet
    mount V1::User
    mount V1::Store
  end
end
