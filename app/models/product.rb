class Product < ApplicationRecord
    acts_as_paranoid
    belongs_to :genre
    attachment :image
    enum sell_status: {sales: 0, stoopped: 1}
    has_many :carts, dependent: :destroy
    has_many :order_items, dependent: :destroy

    def tax_price
        (price * 1.1).round()
    end
end
