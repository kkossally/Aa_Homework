class Person < ApplicationRecord
  validates :house_id, presence: true
  validates :name, presence: true

  belongs_to(
    :house,
    class_name: 'House',
    foreign_key: :house_id,
    primary_key: :id
  )
end