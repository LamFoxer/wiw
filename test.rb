class Article < ApplicationRecord
  validates :title, presence: true
  def hello
    puts "Hello"
  end
end
