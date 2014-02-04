# == Schema Information
#
# Table name: products
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  description    :text
#  price_in_cents :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Product < ActiveRecord::Base
  validates :description, :name, :presence => true
  validates :price_in_cents, :numericality => {:only_integer => true}
end
