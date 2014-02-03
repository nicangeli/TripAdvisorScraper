require 'rubygems'
require 'mechanize'
require 'pp' 
agent = Mechanize.new

page = agent.get('http://www.tripadvisor.co.uk/Hotel_Review-g187791-d232851-Reviews-or50-Hotel_De_Russie-Rome_Lazio.html#REVIEWS')


while not agent.page.link_with(:text => '»').nil? do 
    entries = page.search('.partial_entry').each do |entry|
        pp entry.text
    end
    page = agent.page.link_with(:text => '»').click
end



