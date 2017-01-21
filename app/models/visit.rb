class Visit < EpicBase
  self.table_name = "visit"

  def visit_types
    return [
      'Baseline',
      "F/U Yr 1",
      'F/U Yr 2',
      'F/U Yr 3',
      'F/U Yr 4',
      'F/U Yr 5',
      'F/U Yr 6',
      'F/U Yr 7',
      'F/U Yr 8',
      'F/U Yr 9',
      'F/U Yr 10',
      'F/U Yr 11',
      'F/U Yr 12',
      'F/U Yr 13',
      'Flare',
      'Motor Study'
    ]
  end

  def visit_status_types
    return [
      'Complete',
      'Missed',
      'Deceased',
      'Pending',
      'Partial',
      'In Progress',
      'Scheduled',
      'Withdrawn - Lost to follow-up',
      'Withdrawn - Voluntary'
    ]
  end

  def studies
    return [
      'EPIC',
      'Myelin Water',
      'Motor Study'
    ]
  end
end
