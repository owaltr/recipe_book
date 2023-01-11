class Recipe < ApplicationRecord
  has_one_attached :image

  has_many :ingredients, dependent: :destroy

  accepts_nested_attributes_for :ingredients

  validates :title, presence: { message: "darf nicht leer sein" }, length: { maximum: 200, message: "maximal 200 Zeichen" }
  validates :author, presence: { message: "darf nicht leer sein" }
  validates :description, presence: { message: "darf nicht leer sein" }
end
