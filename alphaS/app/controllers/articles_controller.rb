class ArticlesController < ApplicationController
    def index
        @articles = Article.all 
    end
    
    def show
        #byebug
     @article = Article.find(params[:id])
    end
 
    def new
         @store = Article.new
    end

    def edit
       # byebug
        @article = Article.find(params[:id])
    end

    def create
     
        @store = Article.new(params.require(:article).permit(:title, :des, :author))
        # render plain: @store.inspect
        if @store.save
            flash[:notice] = "Article was created successfully."
            redirect_to article_path(@store)
        else
            render :new
         # redirect_to 'locahost:3000/articles/new', allow_other_host: true
        end
    end

    def update
    # byebug
    @article = Article.find(params[:id])
    if  @article.update(params.require(:article).permit(:title, :des, :author))
        flash[:notice] = "Article was updated successfully."
        redirect_to articles_path
    else
        render :edit
    end
    end

end
