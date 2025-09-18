# == Schema Information
#
# Table name: faculties
#
#  id            :bigint           not null, primary key
#  university_id :bigint           not null
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_faculties_on_university_id  (university_id)
#
# Foreign Keys
#
#  fk_rails_...  (university_id => universities.id)
#
class Faculty < ApplicationRecord
  belongs_to :university
end
