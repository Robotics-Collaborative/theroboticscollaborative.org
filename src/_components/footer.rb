class Footer < Bridgetown::Component
  def initialize(**options)
    @options = options
  end

  private

  def student_name
    # Try to access site data through Bridgetown's current site
    site_instance = Bridgetown::Current.site
    if site_instance&.data&.dig("personal_info", "name")
      site_instance.data.dig("personal_info", "name")
    else
      "Rose City Robotics"
    end
  end

  def navigation_items
    [
      {name: "Home", href: "/"},
      {name: "FIRST Robotics", href: "/first_robotics"},
      {name: "Sponsors", href: "/first_robotics#sponsors"},
      {name: "Events", href: "https://luma.com/rosecityrobotics"},
      {name: "Contact", href: "/contact"},
      {name: "Rose City Robotics", href: "https://rosecityrobotics.com"},
      {name: "Source Code", href: "https://github.com/Robotics-Collaborative/theroboticscollaborative.org"}
    ]
  end
end
