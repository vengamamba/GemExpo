class CreateLoginPages < ActiveRecord::Migration
  def change
    create_table :login_pages do |t|
      t.string   "user_id",    limit: 25
      t.string   "password",   limit: 25
      t.string   "name",       limit: 50
      t.timestamps
    end
  end
end
