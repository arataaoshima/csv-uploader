class PostsController < ApplicationController

    def import
      
        Post.import(params[:file])
        redirect_to posts_index_path
    end
    
    def index
        @posts = Post.all
    end
  
end