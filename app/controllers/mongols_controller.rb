class MongolsController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create,]

    def index
        @mongols = Mongol.all
	    @mongols = Mongol.order(created_at: :desc).limit(3)
    end
    

    def new
        @mongol = Mongol.new
        
    end

    def create
        mongol = Mongol.new(mongol_params)
        if mongol.save!
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
    end

    

end

def show
    @mongols = Mongol.all
end

def detail
    @mongol = Mongol.find(params[:id])
end

def edit
    @mongol = Mongol.find(params[:id])
end

def update
    @mongol = Mongol.find(params[:id])
    if @mongol.update(mongol_params)
      redirect_to :action => "show", :id => @mongol.id
    else
      redirect_to :action => "new"
    end
end

def destroy
    mongol = Mongol.find(params[:id])
    mongol.destroy
    redirect_to action: :index
end


private
def mongol_params
    params.require(:mongol).permit(:name, :genre, :address, :about, :image)
end

def khaan1
end

end
