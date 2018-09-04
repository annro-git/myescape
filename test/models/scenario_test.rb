# == Schema Information
#
# Table name: scenarios
#
#  id               :integer          not null, primary key
#  name             :string
#  theme            :string
#  difficulty       :integer
#  description      :text
#  global_note      :integer
#  min_player       :integer
#  max_player       :integer
#  duration         :datetime
#  price_per_player :float
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  escape_game_id   :integer
#

require 'test_helper'

class ScenarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
