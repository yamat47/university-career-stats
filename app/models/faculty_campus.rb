# == Schema Information
#
# Table name: faculty_campuses
#
#  id         :bigint           not null, primary key
#  faculty_id :bigint           not null
#  campus_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_faculty_campuses_on_campus_id   (campus_id)
#  index_faculty_campuses_on_faculty_id  (faculty_id)
#
# Foreign Keys
#
#  fk_rails_...  (campus_id => campuses.id)
#  fk_rails_...  (faculty_id => faculties.id)
#
class FacultyCampus < ApplicationRecord
  belongs_to :faculty
  belongs_to :campus
end
