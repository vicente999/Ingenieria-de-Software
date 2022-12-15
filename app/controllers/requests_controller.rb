class RequestsController < ApplicationController
  before_action :authenticate_user! #asociaciones 

  def new
    @request = current_user.requests.build
    @publication = Publication.find(params[:id])
  end

  def create
    @requests_params = params.require(:request).permit(:name, current_user.username, :date, :user_id, :publication_id)
    @request = current_user.requests.build(@requests_params)
    
    if @request.save
      if current_user.username != "moderador" or current_user.username != "admin"
        redirect_to :root, notice: '¡La solicitud fue enviada satisfactoriamente!'
      end
    else
      redirect_to requests_index_path, notice: 'Error al enviar la solicitud'
    end 
  end

  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
  end

  def edit
    @request = Request.find(params[:id])
    @request.update(status: params[:status])
    @request.update(devolucion: params[:devolucion])
    redirect_to requests_index_path, notice: "Estado Actualizado"
  end

  def update
    @request = Request.find(params[:id])
    @requests_new_params = params.require(:request).permit(:name, Time.now.strftime("%d/%m/%Y"), current_user.username, :status)
    if @request.update(@requests_new_params)
      redirect_to requests_index_path, notice: '¡La solicitud fue editada satisfactoriamente!'
    else
      redirect_to requests_index_path, notice: 'Error al editar la solicitud'
    end
  end

  def delete
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to requests_index_path, notice: '¡La solicitud fue eliminada satisfactoriamente!'
  end

  def correct_user
    @request = current_user.requests.find_by(id: params[:id])
    redirect_to :root, notice: "Error" if @request.nil?
  end
end
