require 'test_helper'

class RequestsControllerTest < ActionController::TestCase
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post :create, request: { data_alteracao: @request.data_alteracao, data_oficializacao: @request.data_oficializacao, data_pre: @request.data_pre, data_pro: @request.data_pro, data_solicitacao: @request.data_solicitacao, environment: @request.environment, observation: @request.observation, oficializar: @request.oficializar, project_id: @request.project_id, recompilado: @request.recompilado, source_id: @request.source_id, status: @request.status }
    end

    assert_redirected_to request_path(assigns(:request))
  end

  test "should show request" do
    get :show, id: @request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request
    assert_response :success
  end

  test "should update request" do
    patch :update, id: @request, request: { data_alteracao: @request.data_alteracao, data_oficializacao: @request.data_oficializacao, data_pre: @request.data_pre, data_pro: @request.data_pro, data_solicitacao: @request.data_solicitacao, environment: @request.environment, observation: @request.observation, oficializar: @request.oficializar, project_id: @request.project_id, recompilado: @request.recompilado, source_id: @request.source_id, status: @request.status }
    assert_redirected_to request_path(assigns(:request))
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete :destroy, id: @request
    end

    assert_redirected_to requests_path
  end
end
