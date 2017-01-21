class SubjectsBase < ActiveRecord::Base
  establish_connection DB_SUBJECTS
  self.abstract_class = true
end
