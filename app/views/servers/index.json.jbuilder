json.array!(@servers) do |server|
  json.extract! server, :id, :name, :url, :ip_address, :username, :password, :database_type
  json.url server_url(server, format: :json)
end
