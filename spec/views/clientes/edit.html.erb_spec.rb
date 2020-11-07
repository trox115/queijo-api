require 'rails_helper'

RSpec.describe "clientes/edit", type: :view do
  before(:each) do
    @cliente = assign(:cliente, Cliente.create!(
      nome: "MyString",
      morada: "MyString",
      nif: "MyString",
      telefone: "MyString"
    ))
  end

  it "renders the edit cliente form" do
    render

    assert_select "form[action=?][method=?]", cliente_path(@cliente), "post" do

      assert_select "input[name=?]", "cliente[nome]"

      assert_select "input[name=?]", "cliente[morada]"

      assert_select "input[name=?]", "cliente[nif]"

      assert_select "input[name=?]", "cliente[telefone]"
    end
  end
end
