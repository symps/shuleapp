require 'test_helper'

class StaffsControllerTest < ActionController::TestCase
  setup do
    @staff = staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff" do
    assert_difference('Staff.count') do
      post :create, staff: { academic: @staff.academic, address: @staff.address, bio: @staff.bio, county: @staff.county, gender: @staff.gender, id_num: @staff.id_num, job: @staff.job, name: @staff.name, phone: @staff.phone, photo: @staff.photo, sch_code: @staff.sch_code, sch_name: @staff.sch_name, staff_id: @staff.staff_id }
    end

    assert_redirected_to staff_path(assigns(:staff))
  end

  test "should show staff" do
    get :show, id: @staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staff
    assert_response :success
  end

  test "should update staff" do
    patch :update, id: @staff, staff: { academic: @staff.academic, address: @staff.address, bio: @staff.bio, county: @staff.county, gender: @staff.gender, id_num: @staff.id_num, job: @staff.job, name: @staff.name, phone: @staff.phone, photo: @staff.photo, sch_code: @staff.sch_code, sch_name: @staff.sch_name, staff_id: @staff.staff_id }
    assert_redirected_to staff_path(assigns(:staff))
  end

  test "should destroy staff" do
    assert_difference('Staff.count', -1) do
      delete :destroy, id: @staff
    end

    assert_redirected_to staffs_path
  end
end
