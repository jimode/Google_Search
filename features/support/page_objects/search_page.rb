class Search < SitePrism::Page
    set_url "http:www.google.co.uk"

    element :search_field, '#lst-ib'
    element :search_button, '[input[name="btnK"]'

    section :search_drop_down, 'ul[role="listbox"]' do
        elements :options, 'li'
    end

    section :results_container, '#search' do
        elements :titles, 'h3'
        elements :descriptions, '.s'
    end

    def find_index_for(search_word)
        search_drop_down.options.find_index { |option| option.text == search_word }
    end
end