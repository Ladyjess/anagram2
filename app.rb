require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/anagram')

get('/') do
  erb(:form)
end

get('/anagram_solution') do
  @word = params.fetch('word')
  @next_word = params.fetch('next_word')
  @solution = @word.anagram(@next_word)
  erb(:anagram_solution)
end
