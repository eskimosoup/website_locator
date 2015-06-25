class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :name
      t.string :url
      t.string :ip_address
      t.string :username
      t.string :password
      t.string :database_type

      t.timestamps null: false
    end
  end
end
