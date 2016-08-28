json.extract! user, :id, :name, :email, :photo, :state, :city, :occupation, :username, :rating, :password, :created_at, :updated_at
json.url user_url(user, format: :json)