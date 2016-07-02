json.array!(@users) do |user|
	user.email = highlight(user.email,@search)
  json.extract! user, :id, :age, :pay, :stature, :weigh, :email
  json.url user_url(user)
  #json.url user_url(user, format: :plain)
end
