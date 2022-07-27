class ArticlesController < ApplicationController
    def show
        @articles = Article.all 
    end
    def article1
        # byebug
        @articleNo1 = Article.find(1)
    end
    def article2
        @articleNo2 = Article.find(2)
    end
    def new
         @store = Article.new
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

end
