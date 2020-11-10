class PayScreen < SitePrism::Page

    element :payBank, "a[class='bankwire']"
    element :confirmOrder, "button[class='button btn btn-default button-medium']"
    element :msgConfirmOrder, "p[class='cheque-indent']"

    def clickPayBank
        payBank.click
    end

    def clickConfirmOrder
        confirmOrder.click
    end

    def messageConfirmOrder
        msgConfirmOrder.text
    end

end