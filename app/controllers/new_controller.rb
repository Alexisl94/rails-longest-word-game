class NewController < ApplicationController
  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  # def run_game(attempt, grid, start_time, end_time)
  #   if english_word?(attempt) == false
  #     return { time: end_time - start_time, score: 0, message: "not an english word" }
  #   elsif word_in_grid?(attempt, grid) == false
  #     return { time: end_time - start_time, score: 0, message: "not in the grid" }
  #   elsif english_word?(attempt) == true && word_in_grid?(attempt, grid) == true
  #     return { time: end_time - start_time, score: (attempt.size * 5) - (end_time - start_time), message: "Well done !" }
  #   end
  # end

  # def word_in_grid?(attempt, grid)
  #   attempt.upcase.chars.all? { |letter| attempt.upcase.count(letter) <= grid.count(letter) }
  # end

  # def english_word?(attempt)
  #   url = "https://wagon-dictionary.herokuapp.com/#{attempt}"
  #   uri_open = URI.open(url).read
  #   json = JSON.parse(uri_open)
  #   json['found']
  # end
end
