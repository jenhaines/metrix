module ApplicationHelper

  def form_group_tag(errors, &block)
    if errors.any?
      content_tag :div, capture(&block), class: 'form-group has-error'
    else
      content_tag :div, capture(&block), class: 'form-group'
    end
  end

  def form_tag_group(errors)
    if errors.any?
      'form-group has-error'
    else
      'form-group'
    end
  end
end
