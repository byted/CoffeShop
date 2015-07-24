require 'test_helper'

class CartsControllerTest < ActionController::TestCase

  setup :activate_authlogic # run before tests are executed
  setup do
    @cart = carts(:one)
    as_admin
  end

  test "should destroy cart" do
    as_user
    assert_difference('Cart.count', -1) do
      delete :destroy, {id: @cart}
    end

    assert_redirected_to store_url
  end
end
