# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  name       :string
#  price      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ApplicationRecord
	has_many :product_to_categories
	has_many :category, through: :product_to_categories
end
