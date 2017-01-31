json.extract! user, :id, :handle, :fullname, :email, :pwdhash, :private, :created_at, :updated_at
json.url user_url(user, format: :json)