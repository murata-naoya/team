class Product < ApplicationRecord
    acts_as_paranoid
    belongs_to :genre
    attachment :image
    enum sell_status: {sales: 0, stoopped: 1}
end
