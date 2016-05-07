require 'rails_helper'

RSpec.describe "tables/new", type: :view do
  before(:each) do
    assign(:table, Table.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new table form" do
    render

    assert_select "form[action=?][method=?]", tables_path, "post" do

      assert_select "input#table_title[name=?]", "table[title]"

      assert_select "textarea#table_description[name=?]", "table[description]"
    end
  end
end
