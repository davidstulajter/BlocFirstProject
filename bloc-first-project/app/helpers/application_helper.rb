module ApplicationHelper
  def form_group_tag(errors, &bloc)
    if errors.any?
      content_tag :div, capture(&bloc), class: 'form_group has_error'
    else
      content_tag :div, capture(&bloc), class: 'form_group'
    end
  end
end
