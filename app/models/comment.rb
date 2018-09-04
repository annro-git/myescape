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
end
