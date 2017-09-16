class UserController < ApplicationController

	# before_action :set_user, only: [:show, :edit]

   def index
    @users = User.all
  end

	# def list
 #      @employees = Employee.all
	# end

   def show
      
   end
  
   def new
      byebug
      @user = User.new
      # get_users
   end

   def edit
    @user = User.find(params[:id])
    @all_articles = Article.all
   end

   def create
      byebug
      @user = User.new(user_params)
      
      if @user.save
        redirect_to :action => 'show'
      else
        render 'new'
      end
   end

   
   def delete
      User.find(params[:id]).destroy
      redirect_to :action => 'list'
   end


    private
    # Use callbacks to share common setup or constraints between actions.
    # def set_user
    #   @user = User.find(params[:id])
    # end

    def user_params
      params.require(:user).permit(:username, :id, :user_ip,:email,:location,:profile_picture)
    end

    # Never trust parameters from the scary internet, only allow the white list through.

    # utility method

    # def get_users
    #   @all_article = Article.all
    #   @user_article = @user.userarticle
       
    # end

end

