class AddComentarioToResenas < ActiveRecord::Migration[6.0]
  def change
    add_column :resenas, :comentario, :text
  end
end
