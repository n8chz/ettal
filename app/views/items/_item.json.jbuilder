json.extract! item, :id, :barcode, :brand, :gendesc_id, :size, :unit_id, :created_at, :updated_at
json.url item_url(item, format: :json)