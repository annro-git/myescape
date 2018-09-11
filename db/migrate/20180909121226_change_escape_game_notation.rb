class ChangeEscapeGameNotation < ActiveRecord::Migration[5.2]
  def change
  	rename_column :scenarios, :global_note, :temp_gn
  	add_column :scenarios, :global_note, :float
  	
  	EscapeGame.all.each do |escape_game|
  		escape_game.update_attributes(global_note: temp_gn)
  	end

  	remove_column :scenarios, :temp_gn

  end
end
