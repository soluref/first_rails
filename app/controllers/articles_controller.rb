class ArticlesController < ApplicationController

  #http_basic_authenticate_with name: "dhh", password: "secret", except: [:index :new]
 
  
	def new
	end
  
	def create
		@article = Article.new(params.require(:article).permit(:title, :text))		
		if @article.save
			redirect_to @article
		else
			render 'new'
		end
	end
	def edit
		@article = Article.find(params[:id])
	end	

	def update
		@article = Article.find(params[:id])
	 
	  if @article.update(article_params)
		redirect_to @article
	  else
		render 'edit'
	  end
	end

	def index
		@articles = Article.all
		#@articles = Article.find_by_sql(["SELECT * from Articles WHERE title = 'article 1'"])
		
	end	

	def show
		@article = Article.find(params[:id])
	end	
	def search
		@articles = Article.where(:title=>params[:title]).first
		redirect_to @article
	end
	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to articles_path
	end	
		
	private
	  def article_params
		params.require(:article).permit(:title, :text)
	  end	
end
