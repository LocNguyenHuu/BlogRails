json.extract! post_detail, :id, :PostText, :PostID, :created_at, :updated_at
json.url post_detail_url(post_detail, format: :json)