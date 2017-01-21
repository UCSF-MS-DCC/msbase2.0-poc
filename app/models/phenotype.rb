class Phenotype < SubjectsBase
  self.table_name = "phenotypes"

  def gender_list
    return [
      'M',
      'F',
      'U',
      'f',
      'NA',
      'K',
      'UNK'  
    ]
  end
end
