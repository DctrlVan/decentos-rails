require 'test_helper'

class BtcinvoicesControllerTest < ActionController::TestCase
  setup do
    @btcinvoice = btcinvoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:btcinvoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create btcinvoice" do
    assert_difference('Btcinvoice.count') do
      post :create, btcinvoice: { fiat_amt: @btcinvoice.fiat_amt, is_paid: @btcinvoice.is_paid, rate: @btcinvoice.rate, recipient: @btcinvoice.recipient, sender: @btcinvoice.sender, time_sent: @btcinvoice.time_sent }
    end

    assert_redirected_to btcinvoice_path(assigns(:btcinvoice))
  end

  test "should show btcinvoice" do
    get :show, id: @btcinvoice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @btcinvoice
    assert_response :success
  end

  test "should update btcinvoice" do
    patch :update, id: @btcinvoice, btcinvoice: { fiat_amt: @btcinvoice.fiat_amt, is_paid: @btcinvoice.is_paid, rate: @btcinvoice.rate, recipient: @btcinvoice.recipient, sender: @btcinvoice.sender, time_sent: @btcinvoice.time_sent }
    assert_redirected_to btcinvoice_path(assigns(:btcinvoice))
  end

  test "should destroy btcinvoice" do
    assert_difference('Btcinvoice.count', -1) do
      delete :destroy, id: @btcinvoice
    end

    assert_redirected_to btcinvoices_path
  end
end
