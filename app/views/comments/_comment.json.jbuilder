json.extract! comment, :id, :Comment, :CommenterID, :CommentDate, :Deleted, :created_at, :updated_at
json.url comment_url(comment, format: :json)