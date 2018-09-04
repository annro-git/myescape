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

require 'test_helper'

class EscapeGameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
