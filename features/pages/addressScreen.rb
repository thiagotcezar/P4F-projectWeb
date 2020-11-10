class AddressScreen < SitePrism::Page

    element :fieldCreateEmail, "#email_create"
    element :buttonSubmitCreateEmail, "#SubmitCreate"
    element :selectGenderMr, "#id_gender1"
    element :fieldFirstName, "#customer_firstname"
    element :fieldLastName, "#customer_lastname"
    element :fieldPassword, "#passwd"
    element :firstNameAddress, "#firstname"
    element :lastNameAddress, "#lastname"
    element :streetAddress, "#address1"
    element :cityAddress, "#city"
    element :zipPostalAddress, "#postcode"
    element :mobileNumber, "#phone_mobile"
    element :nameAddress, "#alias"
    element :submitAccount, "#submitAccount"
    element :proceedCheckoutAddress, "button[class='button btn btn-default button-medium']"
    element :checkBoxShipping, "#uniform-cgv"
    element :proceedCheckoutShipping, "button[class='button btn btn-default standard-checkout button-medium']"
    element :alertAuthenticationFailed, "div[class='alert alert-danger']"

    def msgAuthenticationFailed
        puts alertAuthenticationFailed.text
    end

    def fieldEmail
        emailFaker = Faker::Internet.email
        fieldCreateEmail.click
        fieldCreateEmail.set(emailFaker)
    end
    
    def submitCreateEmail
        buttonSubmitCreateEmail.click
    end
    
    def selectMr
        selectGenderMr.click
    end
    
    def createFirstName
        firstName = DATA["firstName"]
        fieldFirstName.click
        fieldFirstName.set(firstName)
    end
    
    def createLastName
        lastName = DATA["lastName"]
        fieldLastName.click
        fieldLastName.set(lastName)
    end
    
    def createPass
        password = DATA["password"]
        fieldPassword.click
        fieldPassword.set(password)
    end
    
    def selectDateOfBirth
        find("#days option[value='1']").select_option
        find("#months option[value='2']").select_option
        find("#years option[value='1995']").select_option
    end
    
    def createFirstNameAddress
        firstName = DATA["firstName"]
        firstNameAddress.click
        firstNameAddress.set(firstName)
    end
    
    def createLastNameAddress
        lastName = DATA["lastName"]
        lastNameAddress.click
        lastNameAddress.set(lastName)
    end
    
    def createStreetAddress
        street = DATA["streetAddress"]
        streetAddress.click
        streetAddress.set(street)
    end
    
    def createCityAddress
        city = DATA["cityAddress"]
        cityAddress.click
        cityAddress.set(city)
    end
    
    def selectState
        find("#id_state option[value='1']").select_option
    end
    
    def createZipPostalAddress
        zipCode = DATA["zipCode"]
        zipPostalAddress.click
        zipPostalAddress.set(zipCode)
    end
    
    def selectCountry
        find("#id_country option[value='21']").select_option
    end
    
    def createMobileNumber
        mobile = DATA["mobileNumber"]
        mobileNumber.click
        mobileNumber.set(mobile)
    end
    
    def createNameAddress
        name = DATA["nameAddress"]
        nameAddress.click
        nameAddress.set(name)
    end
    
    def clickSubmitAccount
        submitAccount.click
    end
    
    def clickProceedCheckoutAddress
        proceedCheckoutAddress.click
    end
    
    def clickCheckBoxShipping
        checkBoxShipping.click
    end
    
    def clickProceedCheckoutShipping
        proceedCheckoutShipping.click
    end

end