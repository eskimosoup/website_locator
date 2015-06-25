class AddHostToServers < ActiveRecord::Migration
  def change
    add_reference :servers, :host, index: true, foreign_key: true
  end
end
