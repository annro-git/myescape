# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  comment     :text
#  global_note :integer
#  user_id     :integer
#  scenario_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :scenario

	validates :user_id, uniqueness: { scope: :scenario_id, message: "L'utilisateur a déjà commenté ce scenario." }
	validates :global_note, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
end
