json.extract! read_session, :id, :read_pages, :created_at, :updated_at
json.url read_session_url(read_session, format: :json)
