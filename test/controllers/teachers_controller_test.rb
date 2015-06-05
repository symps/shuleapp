require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  setup do
    @teacher = teachers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teachers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher" do
    assert_difference('Teacher.count') do
      post :create, teacher: { academic: @teacher.academic, address: @teacher.address, bio: @teacher.bio, county: @teacher.county, department: @teacher.department, dob: @teacher.dob, email: @teacher.email, employed_on: @teacher.employed_on, employee_num: @teacher.employee_num, employer: @teacher.employer, gender: @teacher.gender, id_no: @teacher.id_no, name: @teacher.name, parent: @teacher.parent, phone: @teacher.phone, sch_code: @teacher.sch_code, sch_name: @teacher.sch_name }
    end

    assert_redirected_to teacher_path(assigns(:teacher))
  end

  test "should show teacher" do
    get :show, id: @teacher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher
    assert_response :success
  end

  test "should update teacher" do
    patch :update, id: @teacher, teacher: { academic: @teacher.academic, address: @teacher.address, bio: @teacher.bio, county: @teacher.county, department: @teacher.department, dob: @teacher.dob, email: @teacher.email, employed_on: @teacher.employed_on, employee_num: @teacher.employee_num, employer: @teacher.employer, gender: @teacher.gender, id_no: @teacher.id_no, name: @teacher.name, parent: @teacher.parent, phone: @teacher.phone, sch_code: @teacher.sch_code, sch_name: @teacher.sch_name }
    assert_redirected_to teacher_path(assigns(:teacher))
  end

  test "should destroy teacher" do
    assert_difference('Teacher.count', -1) do
      delete :destroy, id: @teacher
    end

    assert_redirected_to teachers_path
  end
end
