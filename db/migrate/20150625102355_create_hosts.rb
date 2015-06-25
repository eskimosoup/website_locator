class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :url
      t.string :username
      t.string :password

      t.timestamps null: false
    end
  end
end
