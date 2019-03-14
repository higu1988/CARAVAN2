class BlogsController < ApplicationController
  def show
    @blog = Blog.new
  end

  def index
  end

  def new

  end

  def create
    blog = Blog.new(blog_params)
    blog.save
    redirect_to blogs_path
  end
  
  def edit
  end
  
  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end
end

