module ApplicationHelper
  def is_active?(controller)
    'active' if params[:controller] == controller
  end

  def markdown(&block)
    content = capture(&block)
    renderer = Redcarpet::Render::HTML
    Redcarpet::Markdown.new(renderer).render(content).html_safe
  end
end
