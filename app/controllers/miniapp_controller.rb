class MiniappController < ApplicationController
before_action :authenticate_user!, except: :index

def index
  @blogs = Blog.all
end

def new
end

def create
    Blog.create(user: blog_params[:user],blog_text:blog_params[:blog_text],user_id: current_user.id)
    redirect_to "/miniapp"
end

def destroy
   blog = Blog.find(params[:id])
   blog.destroy if blog.user_id == current_user.id
end

def edit
  @blog = Blog.find(params[:id])
end

def update
blog = Blog.find(params[:id])
if blog.user_id == current_user.id
  blog.update(blog_params)
end
end

private
def blog_params
  params.permit(:user, :blog_text)
end

end
