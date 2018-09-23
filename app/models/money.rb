class Money < ApplicationRecord
  belongs_to :user

  enum type_of_money: %i(expense income)

  scope :from_month, -> { where(create_at: Date.current.beginning_of_month..Date.current.end_of_month) }
end
