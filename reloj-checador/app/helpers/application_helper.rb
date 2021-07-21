module ApplicationHelper
  def current_path?(path)
    'active' if request.path.ends_with? path
  end
end
