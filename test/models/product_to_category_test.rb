# == Schema Information
#
# Table name: product_to_categories
#
#  id          :integer          not null, primary key
#  category_id :integer
#  product_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ProductToCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
