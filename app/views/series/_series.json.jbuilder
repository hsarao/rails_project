json.extract! series, :id, :name, :created_at, :updated_at
json.url series_url(series, format: :json)
json.extract! team, :id, :key, :name, :code, :created_at, :updated_at
json.url team_url(team, format: :json)
