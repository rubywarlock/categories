json.array!(@users) do |user|
  json.extract! user, :id, :age, :pay, :stature, :weigh, :email
  json.url user_url(user, format: :json)
end
