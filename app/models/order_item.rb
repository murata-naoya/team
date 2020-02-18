class OrderItem < ApplicationRecord
    belongs_to :product
    belongs_to :order

    enum making_status: { 製作待ち: 0, 製作中: 1  , 製作完了: 2}
end
