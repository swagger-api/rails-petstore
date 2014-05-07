class API < Grape::API

  before do
    header['Access-Control-Allow-Origin']   = '*'
    header['Access-Control-Request-Method'] = '*'
  end

  prefix    'api'
  format    :json

  #Apis
  mount V1::Base

  # Docs
  add_swagger_documentation  mount_path: '/docs',
                             markdown: true,
                             hide_documentation_path: true,
                             models: [Entities::Pet, Entities::Category, Entities::Tag]
end
