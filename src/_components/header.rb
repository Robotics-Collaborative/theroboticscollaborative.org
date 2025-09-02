class Header < Bridgetown::Component
  def initialize(is_home: false, **options)
    @is_home = is_home
    @options = options
  end

  private

  def is_home_page?
    @is_home
  end

  def navigation_items
    [
      {name: "Home", href: "/"},
      {name: "FIRST Robotics", href: "/first_robotics"},
      {name: "Sponsors", href: "/first_robotics#sponsors"},
      {name: "Events", href: "https://luma.com/rosecityrobotics"},
      {name: "Contact", href: "/contact"}
    ]
  end
end
