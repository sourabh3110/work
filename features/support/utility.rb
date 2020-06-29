class Utility
    attr_rerader: driver
    @wait = Selenium::WebDriver::Wait.new(timeout: 15)

    def initialize(driver)
        @driver = driver
    end

    def wait_till_element_display(element:)
        @wait.until{$driver.find_element(element).displayed?}
    end

    def scroll(horizontal:, vertical:)
        driver.exicute_script("window.scrollBy(#{horizontal},#{vertical})")
    end

    def is_visible?(element:)
        begin
            @wait.until{$driver.find_element(element).displayed?}
        rescue => exception
            puts exception.message
        end
    end

end