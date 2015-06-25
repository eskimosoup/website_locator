class Host < ActiveRecord::Base

  has_many :servers

  validates :name, :url, presence: true, uniqueness: true
  validates :username, :password, presence: true
end
