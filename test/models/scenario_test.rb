# == Schema Information
#
# Table name: scenarios
#
#  id               :integer          not null, primary key
#  name             :string
#  theme            :string
#  difficulty       :integer
#  description      :text
#  min_player       :integer
#  max_player       :integer
#  duration         :datetime
#  price_per_player :float
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  escape_game_id   :integer
#  global_note      :float
#

require 'test_helper'

class ScenarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
