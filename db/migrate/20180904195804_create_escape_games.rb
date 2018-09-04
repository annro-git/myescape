class CreateEscapeGames < ActiveRecord::Migration[5.2]
  def change
    create_table :escape_games do |t|
    	t.string :name
		t.text :description
    	t.string :city
    	t.string :adress
    	t.integer :zipcode
    	t.integer :global_note

      t.timestamps
    end
  end
end
