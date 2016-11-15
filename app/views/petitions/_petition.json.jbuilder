json.extract! petition, :id, :name, :identity, :date, :email, :direccion, :country, :city, :description, :created_at, :updated_at
json.url petition_url(petition, format: :json)