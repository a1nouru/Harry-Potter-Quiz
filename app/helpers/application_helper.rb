module ApplicationHelper

  def selected_class(controller)
    controller_name == controller ? 'selected' : ''
  end

end
