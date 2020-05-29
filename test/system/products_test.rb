require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  # test "visiting the home apge" do
  #   visit "/"

  #   assert_selector "h1", text: "Awesome Products"
  #   assert_selector ".card-product", count: Product.count
  # end

  test "creating a new product" do
    login_as users(:george)
    visit "/products/new"

    fill_in "product_name", with: "Le Wagon"
    fill_in "product_tagline", with: "Learn to code"

    click_on "Submit"

    assert_equal page.current_path, "/"
    assert_selector "h2", text: "Le Wagon"
  end
end
