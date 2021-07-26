class AbsencesQuery
  def self.absence_by_month(month)
    Absence.where('extract(month from created_at) = ?', month).count
  end
end
