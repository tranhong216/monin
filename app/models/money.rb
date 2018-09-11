class Money < ApplicationRecord
  enum type_of_money: %i(expense income)
end
