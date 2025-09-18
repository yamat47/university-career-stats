class FacultyCampus < ApplicationRecord
  belongs_to :faculty
  belongs_to :campus
end
