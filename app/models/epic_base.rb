class EpicBase < ActiveRecord::Base
  establish_connection DB_EPIC
  self.abstract_class = true
end
