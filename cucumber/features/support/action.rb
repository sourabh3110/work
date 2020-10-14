class Action
    attr_reader :driver

    def click
        driver.first(id: ).click
    end

    def click(address)
        driver.all(id: )[address].click
    end

    def enter(data)

    end

    def read(data)
    end

    def select(arg)
    end

    def update(data)
    end

    def close(arg)
    end
    

end