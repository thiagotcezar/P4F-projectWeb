module PageObjects

    # Método que instância a classe home.
    def home
        home = HomeScreen.new
    end

    def address
        address = AddressScreen.new
    end

    def pay
        pay = PayScreen.new
    end

    def baseActions
        baseActions = BaseActions.new
    end

end 