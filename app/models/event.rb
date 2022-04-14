class Event < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :events_select
  has_one_attached :image

  validates :events_select_id, numericality: { other_than: 1, message: "出来事を選択してください"}
end
