require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { avanco_fisico: @project.avanco_fisico, data_homologacao: @project.data_homologacao, data_inicio: @project.data_inicio, data_pre: @project.data_pre, data_pro: @project.data_pro, data_teste: @project.data_teste, desvio: @project.desvio, empresa: @project.empresa, faturado_sf: @project.faturado_sf, faturado_swf: @project.faturado_swf, horas_consumidas: @project.horas_consumidas, horas_sf: @project.horas_sf, horas_swf: @project.horas_swf, lider_ict: @project.lider_ict, lider_tivit: @project.lider_tivit, nome: @project.nome, pep: @project.pep, processo: @project.processo, total_horas: @project.total_horas }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { avanco_fisico: @project.avanco_fisico, data_homologacao: @project.data_homologacao, data_inicio: @project.data_inicio, data_pre: @project.data_pre, data_pro: @project.data_pro, data_teste: @project.data_teste, desvio: @project.desvio, empresa: @project.empresa, faturado_sf: @project.faturado_sf, faturado_swf: @project.faturado_swf, horas_consumidas: @project.horas_consumidas, horas_sf: @project.horas_sf, horas_swf: @project.horas_swf, lider_ict: @project.lider_ict, lider_tivit: @project.lider_tivit, nome: @project.nome, pep: @project.pep, processo: @project.processo, total_horas: @project.total_horas }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
