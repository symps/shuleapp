require 'test_helper'

class ParentsControllerTest < ActionController::TestCase
  setup do
    @parent = parents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parent" do
    assert_difference('Parent.count') do
      post :create, parent: { address: @parent.address, bio: @parent.bio, county: @parent.county, gender: @parent.gender, id_num: @parent.id_num, name: @parent.name, phone: @parent.phone, photo: @parent.photo, ptype: @parent.ptype }
    end

    assert_redirected_to parent_path(assigns(:parent))
  end

  test "should show parent" do
    get :show, id: @parent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parent
    assert_response :success
  end

  test "should update parent" do
    patch :update, id: @parent, parent: { address: @parent.address, bio: @parent.bio, county: @parent.county, gender: @parent.gender, id_num: @parent.id_num, name: @parent.name, phone: @parent.phone, photo: @parent.photo, ptype: @parent.ptype }
    assert_redirected_to parent_path(assigns(:parent))
  end

  test "should destroy parent" do
    assert_difference('Parent.count', -1) do
      delete :destroy, id: @parent
    end

    assert_redirected_to parents_path
  end
end
