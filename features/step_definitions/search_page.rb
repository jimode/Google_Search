Given("I am on the google page") do
    @search_page = Search.new
    @search_page.load
    @results_page = Search.new
    @results_page.load
  end
  
When("I enter in a search word {string}") do |search_word|
    @search_page.search_field.set search_word
    @search_page.wait_until_search_drop_down_visible
    index = @search_page.find_index_for search_word
    @search_page.search_drop_down.options[index].click
end
  
  Then("I should see a search page results") do
    expect(@results_page).to have_results_container
    expect(@results_page.results_container).to have_titles
    expect(@results_page.results_container).to have_descriptions
  end
  
  Then("the search results titles shoud contain the word {string}") do |search_word|
    @results_page.results_container.titles.each do |result_titles|
        expect(result_titles.text.downcase).to include(search_word)
    end
  end
  
  Then("the search results description should contain the word {string}") do |search_word|
    @results_page.results_container.titles.each do |result_descriptions|
        expect(result_descriptions.text.downcase).to include(search_word)
    end
  end