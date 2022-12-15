class ChatsController < ApplicationController
  def new
    @chat = Chat.new
  end

  def create 
    @chats_params = params.require(:chat).permit(:usuario, :mensaje)
    @chat = Chat.create(@chats_params)
    if @chat.save
      redirect_to chats_index_path, notice: 'Mensaje enviado exitosamente'
    else
      redirect_to chats_index_path, notice: 'Error al enviar el mensaje'
    end
  end

  def index
    @chats = Chat.all
  end

  def show
    @chat = Chat.find(params[:id])
  end

  def edit
    @chat = Chat.find(params[:id])
  end

  def update
    @chat = Chat.find(params[:id])
    @chats_new_params = params.require(:chat).permit(:usuario, :mensaje)
   
    if @chat.update(@chats_new_params)
      redirect_to chats_index_path, notice: 'Mensaje actualizado' 

    else
      redirect_to chats_index_path, notice: 'Error'
    end
    
  end

  def delete
    @chat = Chat.find(params[:id])
    @chat.destroy
    redirect_to chats_index_path, notice: 'Eliminado'
  end
end
