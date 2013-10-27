require 'tire'
require 'multi_json'

Tire.index 'words' do
      delete

      create :mappings => {
        :word_type => {
          :properties => {
            :id       => { :type => 'string', :index => 'not_analyzed', :include_in_all => false },
            :count    => { :type => 'string'                                                     },
            :word     => { :type => 'string', :analyzer => 'keyword'                             },
          }
        }
      }
   end

articles = [
      { :id => '1', :type => 'word_type', :count => 'one',   :word => 'ruby'           },
      { :id => '2', :type => 'word_type', :count => 'two',   :word => 'python' },
      { :id => '3', :type => 'word_type', :count => 'three', :word => 'java'           },
      { :id => '4', :type => 'word_type', :count => 'four',  :word => 'php'    }
    ]

    Tire.index 'words' do
      import articles
      refresh
    end

s = Tire::Search::Search.new('words')
s.query{string('word:python')}
#s.filter :terms, :word => ['ruby']

p s.results
s.results.each do |o|
	puts o.word
end
