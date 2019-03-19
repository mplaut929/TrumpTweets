class Tweet < ApplicationRecord
  belongs_to :trump
  validates :content, presence: true, {:message => "heyyyyy"}
  validates :content, length: {maximum: 140}
end
