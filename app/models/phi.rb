class Phi < SubjectsBase
  self.table_name = "phi"

  def phone_types
    return [
      'Home',
      'Work',
      'Cell',
      'Other',
      'Pager'
    ]
  end
end
