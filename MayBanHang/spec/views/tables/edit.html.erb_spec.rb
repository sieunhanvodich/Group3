require 'rails_helper'

RSpec.describe "tables/edit", type: :view do
  before(:each) do
    @table = assign(:table, Table.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit table form" do
    render

    assert_select "form[action=?][method=?]", table_path(@table), "post" do

      assert_select "input#table_title[name=?]", "table[title]"

      assert_select "textarea#table_description[name=?]", "table[description]"
    end
  end
end
