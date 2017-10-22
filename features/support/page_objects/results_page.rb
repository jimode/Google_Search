class Search < SitePrism::Page
    set_url "/"

    section :results_container, '#search' do
        elements :titles, 'h3'
        elements :descriptions, '.s'
    end
end