module ApplicationHelper
  include Pagy::Frontend

  def current_path?(path)
    'active' if request.path.include? path
  end

  def validate_input(form, field)
    form.errors.include?(field) ? 'is-invalid' : ''
  end

  def error_message(form, field)
    form.errors.full_messages_for(field).first
  end

  def status(current_status)
    current_status == 'active' ? 'bg-success' : 'bg-danger'
  end

  def button_status(current_status)
    current_status == 'active' ? 'fas fa-bell-slash' : 'fas fa-bell'
  end
end
