class Order < ApplicationRecord
    belongs_to :enduser
    has_many :order_items, dependent: :destroy

    attr_accessor :de1stination_type
    attr_accessor :destination_id
    accepts_nested_attributes_for :order_items

    enum option: { cash: 0, card: 1 }
end
