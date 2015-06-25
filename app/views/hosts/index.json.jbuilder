json.array!(@hosts) do |host|
  json.extract! host, :id, :name, :url, :username, :password
  json.url host_url(host, format: :json)
end
