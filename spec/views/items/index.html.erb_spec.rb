require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        name_item: "Name Item",
        quantity: 2,
        price: "9.99",
        tax: "9.99",
        item_code: "Item Code",
        profite_value: "9.99",
        supplier: nil,
        category: nil,
        profile: nil,
        sector: nil
      ),
      Item.create!(
        name_item: "Name Item",
        quantity: 2,
        price: "9.99",
        tax: "9.99",
        item_code: "Item Code",
        profite_value: "9.99",
        supplier: nil,
        category: nil,
        profile: nil,
        sector: nil
      )
    ])
  end

  it "renders a list of items" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name Item".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Item Code".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
