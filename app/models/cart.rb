class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :products_attributess
  has_many :line_items, :dependent => :destroy
end
