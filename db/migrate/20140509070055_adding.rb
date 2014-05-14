class Adding < ActiveRecord::Migration
  def up
    add_column("login_pages","gender",:string, :limit=>20)
    add_column("login_pages","email",:string, :limit=>20)
    add_column("login_pages","mobile",:string, :limit=>10, :after=>"email")
    add_column("login_pages","city",:string, :limit=>50)
    add_column("login_pages","country",:string, :limit=>50)
  end
  def down
    remove_column("login_pages","country")
    remove_column("login_pages","city")
    remove_column("login_pages","mobile")
    remove_column("login_pages","email")
    remove_column("login_pages","gender")
  end
end
