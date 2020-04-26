defmodule HoverableDdm.Menu do

  defmodule MenuItem do
    defstruct title: "item", link: "#", child_items: []
  end

  def get_menu() do
    [
      %MenuItem{title: "item11"},
      %MenuItem{title: "item12"},
      %MenuItem{title: "item13"},
      %MenuItem{
        title: "item14",
        child_items: [
          %MenuItem{title: "item21"},
          %MenuItem{
            title: "item22",
            child_items: [
              %MenuItem{title: "item31"},
              %MenuItem{title: "item32"},
              %MenuItem{title: "item33"},
            ]
          },
          %MenuItem{title: "item23"},
          %MenuItem{title: "item24"},
        ]
      },
    ]
  end

  #<div class="menu-group hover:bg-indigo-400 group1">
  #  <div class="menu-title">Menu</div>
  #    <ul class="menu-item-container left-0 group1-hover:visible">
  #      <li class="menu-item hover:bg-pink-400">Item1</li>
  #      <li class="menu-item hover:bg-pink-400">Item1</li>
  #      <li class="menu-item hover:bg-pink-400">Item1</li>
  #
  #      <div class="menu-group hover:bg-indigo-400 group2">
  #      <div class="menu-title">Menu2</div>
  #      <ul class="menu-item-container left-32 top-0 group2-hover:visible">
  #      <li class="menu-item hover:bg-pink-400">Item2</li>
  #      <li class="menu-item hover:bg-pink-400">Item2</li>
  #      <li class="menu-item hover:bg-pink-400">Item2</li>
  #    </ul>
  #    </div>
  #
  #  </ul>
  #</div>
end