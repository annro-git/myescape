class AddEscapeGameToScenario < ActiveRecord::Migration[5.2]
  def change
  	add_column :scenarios, :escape_game_id, :integer
  end
end
