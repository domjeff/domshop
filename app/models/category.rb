class Category < ApplicationRecord
  has_one_attached :image

  def thumbnail
    image.variant(resize_to_limit: [50, 50]) if image.attached?
  end
end
