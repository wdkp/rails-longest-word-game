require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = Array.new(10) {('A'..'Z').to_a.sample}
  end

  def score
    @letters = params[:letters]
    @word = params[:word]

    if included?(@word.upcase, @letters)
      if english?(@word)
        @result = "This #{word} is English"
      else
        @result = "This #{word} is not English"
  end
end
  private

 # def english(word)
  #  response = URI.open("https://wagon-dictionary.herokuapp.com/autocomplete/#{word}")
   # json = JSON.parse(response.read)
    #json('found')
  #end
#end
