# == Schema Information
#
# Table name: departments
#
#  id         :bigint           not null, primary key
#  faculty_id :bigint           not null
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_departments_on_faculty_id  (faculty_id)
#
# Foreign Keys
#
#  fk_rails_...  (faculty_id => faculties.id)
#
class Department < ApplicationRecord
  belongs_to :faculty
end
