class ResenasController < ApplicationController
  def new
    @publication = Publication.find(params[:id])
    @resena = current_user.resenas.build
  end

  def create
    @resenas_params = params.require(:resena).permit(:name, :category, :stars, :description, :publication_id, :user_id, :comentario)
    @resena = current_user.resenas.build(@resenas_params)
    if @resena.save
      redirect_to resenas_index_path(:id => @resena.publication_id), notice: '¡La reseña fue creada satisfactoriamente!'
    else
      redirect_to resenas_index_path(:id => @resena.publication_id), notice: 'Error al crear la reseña'
    end
  end

  def index
    @publication = Publication.find(params[:id])
    @users = User.all
  end

  def show
    @resena = Resena.find(params[:id])

  end

  def edit
    @resena = Resena.find(params[:id])
  end

  def update
    @resena = Resena.find(params[:id])
    @resenas_new_params = params.require(:resena).permit(:name, :category, :stars, :description)
    if @resena.update(@resenas_new_params)
      redirect_to resenas_index_path, notice: '¡La reseña fue editada satisfactoriamente!'
    else
      redirect_to resenas_index_path, notice: 'Error al editar la reseña'
    end
  end

  def delete
    @resena = Resena.find(params[:id])
    @resena.destroy

    redirect_to resenas_index_path, notice: '¡La reseña fue eliminada satisfactoriamente!'
  end
end
