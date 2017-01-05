json.extract! post, :id, :PostTitle, :PostDate, :Deleted, :OwnerID, :created_at, :updated_at
json.url post_url(post, format: :json)