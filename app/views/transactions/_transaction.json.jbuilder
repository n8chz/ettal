json.extract! transaction, :id, :date, :entity_id, :is_void, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)