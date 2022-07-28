class ArticlesController < ApplicationController
   
   before_action :set_article, only: [:show, :edit, :update, :destroy]
   
    def index
        @articles = Article.all 
    end
    
    def show
        #byebug
    
    end
 
    def new
         @article = Article.new
    end

    def edit
       # byebug
       
    end

    def create
     
        @store = Article.new(article_params)
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
    
    if  @article.update(article_params)
        flash[:notice] = "Article was updated successfully."
        redirect_to articles_path
    else
        render :edit
    end
    end

    def destroy
        
        @article.destroy
        redirect_to :action => :index
    end

    private

    def set_article
     @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :des, :author)
    end
    


end
