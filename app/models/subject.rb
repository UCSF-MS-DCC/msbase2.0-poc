class Subject < SubjectsBase
  self.table_name = "subject"

  def affection_status_list
    return [
      'MS - Confirmed',
      'MS - Reported',
      'Not MS - Unaffected - Related',
      'Not MS - Unaffected - Unrelated',
      'Not MS - Unaffected - Unrelated - Spouse',
      'Unknown',
      'Not MS - Other ND - NMO',
      'Not MS',
      'Control',
      'Not MS - Other ND',
      'CIS'
    ]
  end

  def email_newletter_options_list
    return [
      'Yes',
      'No',
      ''
    ]
  end
end
