json.extract! user, :id, :UserName, :UserEmail, :CreateDate, :Active, :created_at, :updated_at
json.url user_url(user, format: :json)