class BlogsController < ApplicationController
  
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
    respond_to do |format|
     format.js 
    end
  end

  def show    
    @blog = Blog.find(params[:id])
     respond_to do |format|
     format.js 
    end
   end


   
   def create
    @user = User.find(params[:blog][:user_id])
    @blog = @user.blogs.create(blog_params)
     @blogs = Blog.all
    respond_to do |format|
     format.js 
    end
   end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.update(blog_params)
    @blogs = Blog.all
     respond_to do |format|
      format.js 
     end
  end


  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
     @blogs = Blog.all
    respond_to do |format|
      format.js 
    end  
  end

   private
   def blog_params
    params.require(:blog).permit(:user_id,:title,:description)
   end

end


