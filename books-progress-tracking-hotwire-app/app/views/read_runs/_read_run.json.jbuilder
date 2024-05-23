json.extract! read_run, :id, :run_number, :status, :created_at, :updated_at
json.url read_run_url(read_run, format: :json)
