class ApplyPriceInLineItem < ActiveRecord::Migration
  def up
    LineItem.all.each do |item|
      if item.product_id==nil #if there's any invalid data
        item.destroy
      elsif
        item.price=item.product.price
        item.save
      end
    end
  end

  def down
  end
end
