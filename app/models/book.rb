class Book < ApplicationRecord
	belongs_to :user
	belongs_to :category
  has_many 		:reviews
	has_attached_file :book_img, styles: { index_img: "250x250>", show_img: "400x425" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :book_img, content_type: /\Aimage\/.*\z/
end
