require 'rails_helper'

RSpec.describe "queijos/new", type: :view do
  before(:each) do
    assign(:queijo, Queijo.new(
      nome: "MyString",
      tamanho: "MyString"
    ))
  end

  it "renders new queijo form" do
    render

    assert_select "form[action=?][method=?]", queijos_path, "post" do

      assert_select "input[name=?]", "queijo[nome]"

      assert_select "input[name=?]", "queijo[tamanho]"
    end
  end
end
