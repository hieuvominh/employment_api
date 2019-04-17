class CheckOutRecord < ApplicationRecord
  belongs_to :employee

  validates_uniqueness_of :checked_out_date, scope: :employee_id
end
