class Pokemon < ApplicationRecord
  validates :number, presence: true
  validates :name, presence: true
  validates :type1, presence: true
  validates :total, presence: true
  validates :hp, presence: true
  validates :attack, presence: true
  validates :defense, presence: true
  validates :special_attack, presence: true
  validates :special_defense, presence: true
  validates :speed, presence: true
  validates :generation, presence: true
  validates :legendary, inclusion: { in: [ true, false ] }
end
