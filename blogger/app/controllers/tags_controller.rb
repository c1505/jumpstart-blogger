class TagsController < ApplicationController
    def show
        @tag = Tag.find(params[:id])
    end
    
    def index
        @tags = Tag.all
    end
    
            # def destroy
        # @article = Article.find(params[:id]).destroy
        
        # flash.notice = "Article '#{@article.title}' Deleted"
        # redirect_to articles_path
        # end
    
    def destroy
        @tag = Tag.find(params[:id]).destroy
        flash.notice = "Tag '#{@tag.name}' Deleted"
        redirect_to tags_path
    end
end
