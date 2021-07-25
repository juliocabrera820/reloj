module ApplicationHelper
  include Pagy::Frontend

  def current_path?(path)
    'active' if request.path.include? path
  end
end
