class StudySubject < SubjectsBase
  self.table_name = "study_subject"

  def enrollment_status_list
    return [
      'Primary UCSF Study',
      'Secondary UCSF Study',
      ''
    ]
  end
end
