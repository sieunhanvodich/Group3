require 'rails_helper'

RSpec.describe "tables/index", type: :view do
  before(:each) do
    assign(:tables, [
      Table.create!(
        :title => "Title",
        :description => "MyText"
      ),
      Table.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of tables" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
