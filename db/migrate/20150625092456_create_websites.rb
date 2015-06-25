class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :name
      t.belongs_to :server, index: true, foreign_key: true
      t.string :ssh_username
      t.string :ssh_password
      t.string :local_url_one
      t.string :local_url_two
      t.string :live_url
      t.string :secret_key
      t.string :database_password
      t.string :ruby_version

      t.timestamps null: false
    end
  end
end
