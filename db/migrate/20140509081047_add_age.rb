class AddAge < ActiveRecord::Migration
  def up
 
    add_column("login_pages","Age",:string, :limit=>10)
    
  
  end
  
  def down
    remove_column("login_pages","Age")
    
  end
end
