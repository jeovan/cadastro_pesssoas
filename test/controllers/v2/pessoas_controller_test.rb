require "test_helper"

class V2::PessoasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @v2_pessoa = v2_pessoas(:one)
  end

  test "should get index" do
    get v2_pessoas_url
    assert_response :success
  end

  test "should get new" do
    get new_v2_pessoa_url
    assert_response :success
  end

  test "should create v2_pessoa" do
    assert_difference('V2::Pessoa.count') do
      post v2_pessoas_url, params: { v2_pessoa: { email: @v2_pessoa.email, idade: @v2_pessoa.idade, nome: @v2_pessoa.nome } }
    end

    assert_redirected_to v2_pessoa_url(V2::Pessoa.last)
  end

  test "should show v2_pessoa" do
    get v2_pessoa_url(@v2_pessoa)
    assert_response :success
  end

  test "should get edit" do
    get edit_v2_pessoa_url(@v2_pessoa)
    assert_response :success
  end

  test "should update v2_pessoa" do
    patch v2_pessoa_url(@v2_pessoa), params: { v2_pessoa: { email: @v2_pessoa.email, idade: @v2_pessoa.idade, nome: @v2_pessoa.nome } }
    assert_redirected_to v2_pessoa_url(@v2_pessoa)
  end

  test "should destroy v2_pessoa" do
    assert_difference('V2::Pessoa.count', -1) do
      delete v2_pessoa_url(@v2_pessoa)
    end

    assert_redirected_to v2_pessoas_url
  end
end
