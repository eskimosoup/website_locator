class Server < ActiveRecord::Base
  validates :name, :url, :ip_address, presence: true, uniqueness: true
  validates :username, :password, presence: true
end
