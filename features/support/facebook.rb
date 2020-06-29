class Facebook
  attr_reader :driver

  def initialize(driver)
    @driver = driver
    @utility = Utility.new(driver)
  end

  def is_sign_up_button_displayed
    @utility.wait_till_element_display(css: FACEBOOK['sign_up_button'])
    @driver.find_element(css: FACEBOOK['sign_up_button']).displayed?
  end

end
