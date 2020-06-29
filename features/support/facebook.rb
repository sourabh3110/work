class Facebook

  def is_sign_up_button_displayed
    Utility.new.wait_till_element_display(FACEBOOK['sign_up_button'])
    $driver.find_element(css: FACEBOOK['sign_up_button']).displayed?
  end

end
