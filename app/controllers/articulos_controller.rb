class ArticulosController < ApplicationController
before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  def index
  @articulos = Articulo.page params[:page]
  end
  
  def show
  @articulo = Articulo.find(params[:id])
  end
  
  def new
  @articulo = Articulo.new
  end

  def create
  @articulo = Articulo.new(article_params)

    if @articulo.save
      redirect_to @articulo
    else
      render :new
    end
  end
  
  def edit
    @articulo = Articulo.find(params[:id])
  end

  def update
    @articulo = Articulo.find(params[:id])

    if @articulo.update(article_params)
      redirect_to @articulo
    else
      render :edit
    end
  end
  
   def destroy
	@articulo = Articulo.find(params[:id])
    @articulo.destroy

    redirect_to articulos_ver_path
  end
  
  
  private 
    def article_params
      params.require(:articulo).permit(:titulo, :body, :image)
    end
 

end
