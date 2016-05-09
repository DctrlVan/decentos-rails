require 'test_helper'

class BitcoinAddrsControllerTest < ActionController::TestCase
  setup do
    @bitcoin_addr = bitcoin_addrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bitcoin_addrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bitcoin_addr" do
    assert_difference('BitcoinAddr.count') do
      post :create, bitcoin_addr: { address: @bitcoin_addr.address, invoice_id: @bitcoin_addr.invoice_id, is_used: @bitcoin_addr.is_used }
    end

    assert_redirected_to bitcoin_addr_path(assigns(:bitcoin_addr))
  end

  test "should show bitcoin_addr" do
    get :show, id: @bitcoin_addr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bitcoin_addr
    assert_response :success
  end

  test "should update bitcoin_addr" do
    patch :update, id: @bitcoin_addr, bitcoin_addr: { address: @bitcoin_addr.address, invoice_id: @bitcoin_addr.invoice_id, is_used: @bitcoin_addr.is_used }
    assert_redirected_to bitcoin_addr_path(assigns(:bitcoin_addr))
  end

  test "should destroy bitcoin_addr" do
    assert_difference('BitcoinAddr.count', -1) do
      delete :destroy, id: @bitcoin_addr
    end

    assert_redirected_to bitcoin_addrs_path
  end
end
