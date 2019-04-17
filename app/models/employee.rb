class Employee < ApplicationRecord
  has_many :check_in_records
  has_many :check_out_records

end
