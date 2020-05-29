require "rails_helper"

RSpec.describe "dish show page" do
end

  it "shows list of ingredients on show page" do
    ingredient1 = Ingredient.create(name: "Carrots", calories: "12")
    dish = Dish.create(name: "Carrot & Apple soup", description: "Doesn't have carrots and apples.", ingredient: ingredient1)
    chef = Chef.create(name: "Jack", dishes: dish)

    visit "/dishes"
    expect(page).to have_content(chef.name)
    expect(page).to have_content(chef.dishes)


  end
