class Action
    attr_reader :driver

    def click
        driver.first(id: ).click
    end

    def click(address)
        driver.all(id: )[address].click
    end

end