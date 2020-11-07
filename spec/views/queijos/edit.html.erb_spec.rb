require 'rails_helper'

RSpec.describe "queijos/edit", type: :view do
  before(:each) do
    @queijo = assign(:queijo, Queijo.create!(
      nome: "MyString",
      tamanho: "MyString"
    ))
  end

  it "renders the edit queijo form" do
    render

    assert_select "form[action=?][method=?]", queijo_path(@queijo), "post" do

      assert_select "input[name=?]", "queijo[nome]"

      assert_select "input[name=?]", "queijo[tamanho]"
    end
  end
end
