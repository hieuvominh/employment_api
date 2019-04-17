class CheckInRecord < ApplicationRecord
  belongs_to :employee

  validates_uniqueness_of :checked_in_date, scope: :employee_id
end
