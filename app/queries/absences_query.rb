class AbsencesQuery
  def self.absence_by_month(month)
    Absence.where('extract(month from created_at) = ?', month).count
  end

  def self.employee_absences_by_month(month)
    User.joins(:absences).where('extract(month from absences.created_at) = ?', month).uniq(&:name)
  end
end
