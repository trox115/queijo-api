require 'rails_helper'

RSpec.describe "queijos/index", type: :view do
  before(:each) do
    assign(:queijos, [
      Queijo.create!(
        nome: "Nome",
        tamanho: "Tamanho"
      ),
      Queijo.create!(
        nome: "Nome",
        tamanho: "Tamanho"
      )
    ])
  end

  it "renders a list of queijos" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "Tamanho".to_s, count: 2
  end
end
