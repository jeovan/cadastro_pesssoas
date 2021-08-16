require "application_system_test_case"

class V2::PessoasTest < ApplicationSystemTestCase
  setup do
    @v2_pessoa = v2_pessoas(:one)
  end

  test "visiting the index" do
    visit v2_pessoas_url
    assert_selector "h1", text: "V2/Pessoas"
  end

  test "creating a Pessoa" do
    visit v2_pessoas_url
    click_on "New V2/Pessoa"

    fill_in "Email", with: @v2_pessoa.email
    fill_in "Idade", with: @v2_pessoa.idade
    fill_in "Nome", with: @v2_pessoa.nome
    click_on "Create Pessoa"

    assert_text "Pessoa was successfully created"
    click_on "Back"
  end

  test "updating a Pessoa" do
    visit v2_pessoas_url
    click_on "Edit", match: :first

    fill_in "Email", with: @v2_pessoa.email
    fill_in "Idade", with: @v2_pessoa.idade
    fill_in "Nome", with: @v2_pessoa.nome
    click_on "Update Pessoa"

    assert_text "Pessoa was successfully updated"
    click_on "Back"
  end

  test "destroying a Pessoa" do
    visit v2_pessoas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pessoa was successfully destroyed"
  end
end
