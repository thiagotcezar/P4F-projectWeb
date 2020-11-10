class HomeScreen < SitePrism::Page

	set_url ""

	element :addCart, "a[title='Add to cart']"
    element :continueShopping, "span[class='continue btn btn-default button exclusive-medium']"
	element :buttonProceedCheckout, "a[class='btn btn-default button button-medium']"
	element :proceedCheckout, "a[class='button btn btn-default standard-checkout button-medium']"
	element :iconCart, "a[title='View my shopping cart']"
	element :alertCartEmpty, "p[class='alert alert-warning']"

	def selectModel(index)
		all(".left-block", :visible => false)[index].hover
	end

	def clickAddCart
		addCart.click
	end

	def clickContinuShopping
		continueShopping.click
	end

	def clickButtonProceedCheckout
		buttonProceedCheckout.click
	end

	def clickProceedCheckout
		proceedCheckout.click
	end

	def clickIconCart
		iconCart.click
	end

	def msgCartEmpty
		alertCartEmpty.text
	end

end