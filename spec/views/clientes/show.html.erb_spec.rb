require 'rails_helper'

RSpec.describe "clientes/show", type: :view do
  before(:each) do
    @cliente = assign(:cliente, Cliente.create!(
      nome: "Nome",
      morada: "Morada",
      nif: "Nif",
      telefone: "Telefone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Morada/)
    expect(rendered).to match(/Nif/)
    expect(rendered).to match(/Telefone/)
  end
end
