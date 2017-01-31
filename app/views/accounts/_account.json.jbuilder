json.extract! account, :id, :name, :number, :account_id, :user_id, :private, :created_at, :updated_at
json.url account_url(account, format: :json)