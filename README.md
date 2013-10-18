# LEDBoard

A ruby library to display messages on a [LED Message Display Board](http://www.maplin.co.uk/colour-moving-message-sign-224480).

## Dependencies

This gem relies on `pi_wire` which itself has a dependecy on [wiringPi](http://wiringPi.com).

## Installation

This is built as a gem but is _not_ available on rubygems!

Add this line to your application's Gemfile:

    gem 'led_board', git: 'https://github.com/olivernn/led_board.git'

And then execute:

    $ bundle

Or install it yourself as:

    $ git clone https://github.com/olivernn/led_board.git
    $ bundle
    $ rake install

## Usage

You need to have initialised PiWire before using LEDBoard, do this with `PiWire.init`. Also, programs that use the LEDBoard will need to run as root.

    board = LEDBoard.connect(1)
    board.send("Hello, World!")

There are more examples in `/examples`.

You can set different options by creating a message object manually:

    message = LEDBoard::Page.new("Hello, World!", color: LEDBoard::Color::RAINBOW)

There are options for color, font, speed, intro and exit transition.

## Low Level Docs

The data sheet describing the low level interface is also included in this repo.

### Command Line Interface

There is also a command line interface for sending messages to the board:

    $ sudo led_board "Hello, World"

You can set all the options via switches:

    $ sudo led_board "Hello, Green World!" --color green

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
