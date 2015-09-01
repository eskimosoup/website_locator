class Website < ActiveRecord::Base
  belongs_to :server

  delegate :name, to: :server, prefix: true, allow_nil: true
end
