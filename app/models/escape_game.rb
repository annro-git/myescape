# == Schema Information
#
# Table name: escape_games
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  city        :string
#  adress      :string
#  zipcode     :integer
#  global_note :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class EscapeGame < ApplicationRecord
	has_many :scenarios
end
