class BakedGood < ActiveRecord::Base
  # add association macro here
  belongs_to :bakery

  def self.by_price
    self.all.order(:price).reverse_order
  end

  def self.most_expensive
    self.all.order(:price).reverse_order.first
  end

end
