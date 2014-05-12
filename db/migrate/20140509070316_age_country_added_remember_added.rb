class AgeCountryAddedRememberAdded < ActiveRecord::Migration
  def up
 
    add_column("login_pages","remember_me",:string, :limit=>10)
    
  
  end
  
  def down
    remove_column("login_pages","remember_me")
    
  end
end
