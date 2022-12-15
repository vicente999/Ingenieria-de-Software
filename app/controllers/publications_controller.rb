class PublicationsController < ApplicationController
  before_action :authenticate_user!
  def new
      @publication = Publication.new
  end

  def create
    @publications_params = params.require(:publication).permit(:name, :rating, :description, :price, :category, :clasification, :disponibility, :tipo, :avatar)
    @publication = Publication.create(@publications_params)
    if @publication.save
      redirect_to publications_index_path, notice: 'Publicación creada'
    else
      redirect_to publications_index_path, notice: 'Error'
    end
    
  end

  def index
    @publications = Publication.all
  end

  def show
    @publication = Publication.find(params[:id])
  end

  def edit
    @publication = Publication.find(params[:id])
  end

  def update
    @publication = Publication.find(params[:id])
    @publications_new_params = params.require(:publication).permit(:name, :rating, :description, :price, :category, :clasification, :disponibility, :type, :avatar)
   
    if @publication.update(@publications_new_params)
      redirect_to publications_index_path, notice: 'Publicación actualizada' 

    else
      redirect_to publications_index_path, notice: 'Error'
    end
    
  end

  def delete
    @publication = Publication.find(params[:id])
    @publication.destroy
    redirect_to publications_index_path, notice: 'Eliminado'
  end
end
