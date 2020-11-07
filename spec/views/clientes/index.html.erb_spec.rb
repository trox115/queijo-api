require 'rails_helper'

RSpec.describe "clientes/index", type: :view do
  before(:each) do
    assign(:clientes, [
      Cliente.create!(
        nome: "Nome",
        morada: "Morada",
        nif: "Nif",
        telefone: "Telefone"
      ),
      Cliente.create!(
        nome: "Nome",
        morada: "Morada",
        nif: "Nif",
        telefone: "Telefone"
      )
    ])
  end

  it "renders a list of clientes" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "Morada".to_s, count: 2
    assert_select "tr>td", text: "Nif".to_s, count: 2
    assert_select "tr>td", text: "Telefone".to_s, count: 2
  end
end
