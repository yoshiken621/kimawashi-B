class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :age_select
  belongs_to :sex_select
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :age_select_id, numericality: { other_than: 1, message: "年齢を選択してください"}
  validates :sex_select_id, numericality: { other_than: 1, message: "性別を選択してください"}
  validates :nickname, presence: true
end
