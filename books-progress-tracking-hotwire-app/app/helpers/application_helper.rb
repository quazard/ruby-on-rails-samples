module ApplicationHelper
  def render_modal(title: "", body: "", footer: "")
    render partial: 'shared/modal', locals: { title: title, body: body, footer: footer }
  end

  def is_field_invalid?(model, attribute_name)
    "is-invalid" if model.errors.any? && model.errors[attribute_name].any?
  end
end
