module ApplicationHelper
  def nav_link_class(path = "#")
    current_page?(path) ? "nav-link active" : "nav-link"
  end

  def nav_link_dropdown_class(path = "#")
    current_page?(path) ? "dropdown-item active" : "dropdown-item"
  end
end
