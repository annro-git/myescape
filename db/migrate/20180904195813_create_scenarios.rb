class CreateScenarios < ActiveRecord::Migration[5.2]
  def change
    create_table :scenarios do |t|
    	t.string :name
    	t.string :theme
    	t.integer :difficulty
    	t.text :description
    	t.integer :global_note
    	t.integer :min_player
    	t.integer :max_player
    	t.datetime :duration
    	t.float :price_per_player

      t.timestamps
    end
  end
end
