class Article < ApplicationRecord
  has_one_attached :cover

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  has_many :blocks, -> { order(:position) }, dependent: :destroy

  validates :title, presence: true
end
