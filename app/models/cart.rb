class Cart < ApplicationRecord
    belongs_to :enduser
    belongs_to :product
end
