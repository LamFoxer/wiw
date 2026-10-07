class Block < ApplicationRecord
  belongs_to :article
  has_many_attached :images

  BLOCK_KINDS = %w[text image image_text gallery video].freeze

  validates :kind, presence: true, inclusion: { in: BLOCK_KINDS }
  validates :position, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
