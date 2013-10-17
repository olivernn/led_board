require 'led_board'

board = LEDBoard.connect(1)

board.send("Hello, Ruby!")

board.disconnect
