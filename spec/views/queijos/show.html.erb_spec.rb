require 'rails_helper'

RSpec.describe "queijos/show", type: :view do
  before(:each) do
    @queijo = assign(:queijo, Queijo.create!(
      nome: "Nome",
      tamanho: "Tamanho"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Tamanho/)
  end
end
