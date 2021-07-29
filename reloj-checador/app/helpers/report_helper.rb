module ReportHelper
  def convert_to_month_option
    months = [{ name: 'january', id: 1 }, { name: 'february', id: 2 }, { name: 'march', id: 3 },
              { name: 'april', id: 4 }, { name: 'may', id: 5 }, { name: 'june', id: 6 }, { name: 'july', id: 7 },
              { name: 'august', id: 8 }, { name: 'september', id: 9 }, { name: 'october', id: 10 },
              { name: 'november', id: 11 }, { name: 'december', id: 12 }]
    months.take(Date.today.month)
  end

  def month_name(id)
    months = { '1' => 'january', '2' => 'february', '3' => 'march', '4' => 'april', '5' => 'may', '6' => 'junio',
               '7' => 'july', '8' => 'august', '9' => 'september', '10' => 'october', '11' => 'november',
               '12' => 'december' }
    months[id]
  end
end
