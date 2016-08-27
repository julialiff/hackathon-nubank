json.extract! consultant, :id, :name, :email, :photo, :state, :city, :occupation, :username, :rating, :knowledge, :created_at, :updated_at
json.url consultant_url(consultant, format: :json)
