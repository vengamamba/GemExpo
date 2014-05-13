class LoginPagesController < ApplicationController
  # before_action :set_login_page, only: [:show, :edit, :update, :destroy]
  layout "parv"
  
  def index
    @login_pages = LoginPage.all
  end
  
  def show
    @login_page=LoginPage.find(params[:id])
  end

  def new
    @login_page = LoginPage.new    
  end

  def edit
    #puts params[:id]
    @login_page = LoginPage.find(params[:id])
  end
 
  def create
    @login_page = LoginPage.new(login_page_params)
     if @login_page.save
        flash[:notice]= "Login Page created successfully."
        redirect_to(:action=>'index')
      else
        render('new')
      end
  end
 
  def update
   # puts "I am in danger"
    @login_page = LoginPage.find(params[:id])
      if @login_page.update_attributes(login_page_params)
        # redirect_to(:action => 'index', :id =>  @login_page.id)
        flash[:notice]="Login page updated successfully"
        redirect_to(:action => 'index')
        # format.html { redirect_to @login_page, notice: 'Login page was successfully updated.' }
        # format.json { head :no_content }
      else
        render('edit')
        # format.json { render json: @login_page.errors, status: :unprocessable_entity }
      end
  end
  
  def delete
    @login_page = LoginPage.find(params[:id])
  end
 
  def destroy
    #puts "entered destroy method"
    login_page = LoginPage.find(params[:id]).destroy
    flash[:notice]="Login page destroyed successfully"
    redirect_to(:action => 'index')
  end

  private
    
  def login_page_params
    params.require(:login_page).permit(:user_id, :password, :name, :Age,:gender, :email, :mobile, :city, :country,:created_on, :updated_on,:remember_me)
  end
end
