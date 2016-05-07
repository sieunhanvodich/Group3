require 'rails_helper'

RSpec.describe "tables/show", type: :view do
  before(:each) do
    @table = assign(:table, Table.create!(
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
