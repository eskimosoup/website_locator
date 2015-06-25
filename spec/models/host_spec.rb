require 'rails_helper'

RSpec.describe Host, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_presence_of(:url) }
  it { should validate_uniqueness_of(:url) }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password) }
end
