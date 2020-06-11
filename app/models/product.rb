class Product < ApplicationRecord
    has_many :lineitems

    before_destroy :no_items_in_any_cart
    validates(:name, :description, :image, presence: true)
    validates :price, numericality:{greater_than_or_equal_to: 5.00}
    validates :image, allow_blank: true, format: {with: %r{\.{gif|jpg|png}\Z}i, message: "Must be GIF, JPG, PNG"}

    def no_items_in_any_cart
        if self.lineitems.empty?
            return true
        else
            errors.add(:base, "line items present")
            return false
        end
    end
end
