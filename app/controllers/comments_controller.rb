class CommentsController < ApplicationController
	def create
		@article = Article.find(params[:article_id])

		@comment = @article.comments.create(comment_param)

		if @comment.save
		 	redirect_to article_path(@article), notice: "Comments added successfully !"		  
		else
			errors = "<ul>" + @comment.errors.full_messages.map{|o| "<li>" + o + "</li>" }.join("") + "</ul>"
			flash[:error] = errors
		  	
		  	redirect_to article_path(@article)
		end		
	end

	def destroy
		@article = Article.find(params[:article_id])
		@comment = @article.comments.find(params[:id])

		@comment.destroy()

	    redirect_to article_path(@article), notice: "Comments deleted successfully !"			
	end

	private 

	def comment_param
		params.require(:comment).permit(:commenter, :content)
	end
end