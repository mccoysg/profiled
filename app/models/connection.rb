module Connection
  require './../lib/profile_me'

  class Matches < ActiveRecord::Base
    okc = OKCupid.new('avocado__','Pepper66')
    dateables = []

    ['Ann Arbor, MI', 'New York, New York',
     'Chicago, Illinois', 'San Francisco, CA'].each do |maybe_here|
      dateables += okc.search({
                                  :min_age => 25,
                                  :max_age => 35,
                                  :gentation => 'Guys who like guys',
                                  :order_by => 'Match %',
                                  :last_login => 'last month',
                                  :location => maybe_here,
                                  :radius => 25,
                                  :require_photo => true,
                                  :relationship_status => 'single'
                              }).results
    end

    dateables.count
  end
end
