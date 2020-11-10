class BaseActions < SitePrism::Page

    def scrollDown(quantity)
        quantity.times do
        page.execute_script("window.scrollTo(0, window.scrollY + 200)")
     end   
    end

end