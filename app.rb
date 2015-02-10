require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/anagram')

get('/') do
  erb(:forms)
end

get('/anagram_solution') do
  @first_word = params.fetch('first_word')
  @other_words = params.fetch('other_words')
  @solution = @first_word.anagram(@other_words)
  erb(:anagram_solution)
end
