require 'rails_helper'

RSpec.describe "clientes/new", type: :view do
  before(:each) do
    assign(:cliente, Cliente.new(
      nome: "MyString",
      morada: "MyString",
      nif: "MyString",
      telefone: "MyString"
    ))
  end

  it "renders new cliente form" do
    render

    assert_select "form[action=?][method=?]", clientes_path, "post" do

      assert_select "input[name=?]", "cliente[nome]"

      assert_select "input[name=?]", "cliente[morada]"

      assert_select "input[name=?]", "cliente[nif]"

      assert_select "input[name=?]", "cliente[telefone]"
    end
  end
end
