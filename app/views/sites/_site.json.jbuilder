json.extract! site, :id, :tytle, :description, :site_key, :user_id, :created_at, :updated_at
json.url site_url(site, format: :json)
