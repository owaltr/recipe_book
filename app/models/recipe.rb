class Recipe < ApplicationRecord
  has_one_attached :image

  has_many :ingredients, dependent: :destroy
  has_many :ratings, dependent: :destroy

  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :ratings

  validates :title, presence: { message: "darf nicht leer sein" }, length: { maximum: 200, message: "maximal 200 Zeichen" }
  validates :author, presence: { message: "darf nicht leer sein" }
  validates :description, presence: { message: "darf nicht leer sein" }

  def rating
    ratings.average(:rate).to_i || 0
  end

end
