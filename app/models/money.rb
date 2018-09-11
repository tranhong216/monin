class Money < ApplicationRecord
  belongs_to :user

  enum type_of_money: %i(expense income)
end
