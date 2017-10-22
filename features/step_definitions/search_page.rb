Given("I am on the google page") do
    @search_page = Search.new
    @search_page.load
    # expect(@search_page).to be_displayed
  end
  
  When("I enter in a search word cucumber") do
    @search_page.search_field.set 'cucumber'
    # @search_page.search_button.click
    @search_page.wait_until_search_drop_down_visible
    @search_page.search_drop_down.options.first.click
end
  
  Then("I should see a search page results") do
    expect(@search_page).to have_results_container
    expect(@search_page.results_container).to have_titles
    expect(@search_page.results_container).to have_descriptions
  end
  
  Then("the search results titles shoud contain the word cucumber") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("the search results description should contain the word cucumber") do
    pending # Write code here that turns the phrase above into concrete actions
  end