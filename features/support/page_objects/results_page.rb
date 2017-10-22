class Search < SitePrism::Page
    set_url "http:www.google.co.uk"

    section :results_container, '#search' do
        elements :titles, 'h3'
        elements :descriptions, '.s'
    end
end