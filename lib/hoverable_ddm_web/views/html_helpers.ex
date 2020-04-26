defmodule HoverableDdmWeb.HtmlHelpers do
  use Phoenix.HTML

  def div_element(content, option) do
    content_tag(:div, content, option)
  end

  def ul_element(content, option) do
    content_tag(:ul, content, option)
  end

  def li_element(content, option) do
    content_tag(:li, content, option)
  end

  def span_element(content, option) do
    content_tag(:span, content, option)
  end

  def fa_icon(icon, opts \\ "") do
    ~E"""
    <i class="<%= icon %> <%= opts %>"></i>
    """
  end

end