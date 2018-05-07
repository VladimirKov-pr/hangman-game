# require "./game.rb"
# require "./result_printer.rb"
# замена на...

current_path = "./" + File.dirname(__FILE__)


require current_path + "/game.rb"
require current_path + "/result_printer.rb"
require current_path + "/word_reader.rb"

printer = ResultPrinter.new

reader = WordReader.new

slovo = reader.read_from_file(current_path + '/data/words.txt')

game = Game.new(slovo)

while game.status == 0 do 

	printer.print_status(game)

	game.ask_next_letter
end

printer.print_status(game)