class Server < ActiveRecord::Base

  belongs_to :host

  validates :name, :url, :ip_address, presence: true, uniqueness: true
  validates :username, :password, presence: true
end
