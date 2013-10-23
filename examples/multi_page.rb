require 'led_board'

board = LEDBoard.connect(1)

board.delete_all

message_1 = LEDBoard::Page.new("Page 1",
                                  page: 'A',
                                  leading: LEDBoard::Leading::SCROLL_LEFT,
                                  lagging: LEDBoard::Lagging::SCROLL_RIGHT,
                                  waiting: LEDBoard::Waiting::MEDIUM,
                                  color: LEDBoard::Color::RED)

message_2 = LEDBoard::Page.new("Page 2",
                                  page: 'B',
                                  leading: LEDBoard::Leading::SCROLL_LEFT,
                                  lagging: LEDBoard::Lagging::SCROLL_RIGHT,
                                  waiting: LEDBoard::Waiting::MEDIUM,
                                  color: LEDBoard::Color::GREEN)

schedule = LEDBoard::Schedule.new(%w(A B))

board.send(message_1)
board.send(message_2)
board.send(schedule)

board.disconnect
