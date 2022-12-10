class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!,except:[:index]

    def index
      @posts = Post.all.order(created_at: :desc)
      @post = Post.new
    end
    
    def new 
    end
    
    def create
      @post = Post.new(post_params)

      if @post.save
        redirect_to posts_path 
      else
        render "new"
      end
    end

    def show
      @post = Post.find(params[:id])
    end

    def find_post
      @post = Post.find(params[:id])
    end

    def edit
      @post = Post.find(params[:id])
    end

    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to posts_path
    end

    def update
      @post = Post.find(params[:id])  
      if @post.update(post_params)
        redirect_to posts_path
      else
        render 'edit'
      end
    end
    
   private
    def post_params
      params.require(:post).permit(:user_id, :description, :photo, :pdf)
    end  
end


