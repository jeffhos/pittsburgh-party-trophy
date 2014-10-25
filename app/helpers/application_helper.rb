module ApplicationHelper
  def active_page?(params)
    'active' if current_page?(params)
  end
end
