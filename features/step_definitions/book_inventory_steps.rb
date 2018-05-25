Given("I have populated my inventory with several books") do
  FactoryBot.create(:book, :user => @registered_user, :name => 'The Punisher', :author => 'John Doe')
  FactoryBot.create(:book, :user => @registered_user, :name => 'Moby Dick', :author => 'Herman Melville')
end

Then("I should see the list of my books") do

  expect(page).to have_content('The Punisher')
  expect(page).to have_content('Moby Dick')
end
