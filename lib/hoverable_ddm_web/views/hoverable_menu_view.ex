defmodule HoverableDdmWeb.HoverableMenuView do
  use HoverableDdmWeb, :view
  alias HoverableDdm.Menu.MenuItem
  import HoverableDdmWeb.HtmlHelpers

  @menu_width 32

  def position(1) do
    "left-0"
  end

  def position(_depth) do
    "left-#{@menu_width} top-0"
  end

  def make_title(title, 1) do
    div_element(title, [class: "menu-title"])
  end

  def make_title(title, _depth) do
    t = div_element(title,[])
    a = fa_icon("fas fa-caret-right")
    div_element([t, a], [class: "flex items-center justify-between p-2"])
  end

  def render_items(items, title, depth) do
    menu_title = make_title(title, depth)
    menu_items = Enum.map(items, fn item -> item |> render_item(depth) end)
                 |> ul_element([class: "menu-item-container w-#{@menu_width} #{position(depth)} group#{depth}-hover:visible"])

    [menu_title, menu_items]
    |> div_element([class: "menu-group group#{depth}"])
  end

  def render_item(%MenuItem{title: title, link: link, child_items: []}, _depth) do
    li_element(link( title, to: link ), [class: "menu-item"])
  end

  def render_item(%MenuItem{title: title, child_items: child_items}, depth) do
    render_items(child_items, title, depth + 1)
  end

end