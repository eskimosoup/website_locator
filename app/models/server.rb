class Server < ActiveRecord::Base
  default_scope { order(:name) }
  belongs_to :host

  scope :active, -> { where(active: true) }

  validates :name, :url, :ip_address, presence: true, uniqueness: true
  validates :username, :password, presence: true
end
