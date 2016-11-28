# coding: utf-8

class BasePage
  def initialize(capybara_instance)
    @cp = capybara_instance
    @root_dir = Dir.pwd
  end

  def virtical_scroll_to(element)
    script = <<-JS
      arguments[0].scrollIntoView(true);
    JS
    @cp.current_session.driver.browser.execute_script(script, element.native)
  end    
  end
end
