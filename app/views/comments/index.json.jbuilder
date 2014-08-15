json.array!(@comments) do |comment|
  json.extract! comment, :id, :content, :user, :problem, :additional, :posted, :likes, :dislikes
  json.url comment_url(comment, format: :json)
end
