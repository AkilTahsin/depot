class Product < ApplicationRecord

    # validates all fields mentioned here have value (presence: true)
    validates :title, :description, :image_url, presence: true

    # validates price field to be numeric and at least 0.01
    # 0.001 would input 0.00 to the database, therefore condition 0.01
    validates :price, numericality: {greater_than_or_equal_to: 0.01}

    # validates each title of product is unique
    validates :title, uniqueness: true

    # validates url with a regular expression
    validates :image_url, allow_blank: true, format: {
        with: %r{\.(gif|jpg|png)\z}i,
        message: 'must be a URL for GIF, JPG or PNG image :)'
    }
end
