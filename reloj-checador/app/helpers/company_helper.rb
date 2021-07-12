module CompanyHelper
  def convert_to_option(companies)
    companies.map { |company| [company.name, company.id.to_s] }
  end
end
