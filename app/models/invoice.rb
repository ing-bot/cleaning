class Invoice < ApplicationRecord
  has_many :schedules
end