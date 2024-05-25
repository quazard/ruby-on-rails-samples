module ApplicationHelper
  def render_modal(title: "", body: "", footer: "")
    render(partial: '/shared/modal', locals: { title: title, body: body, footer: footer })
  end
end
