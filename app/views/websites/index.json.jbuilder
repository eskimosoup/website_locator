json.array!(@websites) do |website|
  json.extract! website, :id, :name, :server_id, :ssh_username, :ssh_password, :local_url_one, :local_url_two, :live_url, :secret_key, :database_password, :ruby_version
  json.url website_url(website, format: :json)
end
