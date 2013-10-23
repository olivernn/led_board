require "led_board/version"

require "led_board/leading"
require "led_board/lagging"
require "led_board/display"
require "led_board/waiting"
require "led_board/font"
require "led_board/color"

require "led_board/checksum"

require "led_board/message"
require "led_board/page"
require "led_board/schedule"
require "led_board/delete_page"
require "led_board/delete_all"

require "led_board/message_serialiser"
require "led_board/page_serialiser"
require "led_board/schedule_serialiser"
require "led_board/delete_page_serialiser"
require "led_board/delete_all_serialiser"
require "led_board/packet"

require "pi_wire/init"

class LEDBoard
  def self.connect(id)
    new(id, PiWire::Serial.new("/dev/ttyAMA0", 9600))
  end

  def initialize(id, output)
    @id, @output = id, output
  end

  def send(msg)
    case msg
    when LEDBoard::Message
      send_message(msg)
    when String
      send_string(msg)
    else
      raise ArgumentError
    end
  end

  def disconnect
    output.close
  end

  def delete_page(page)
    send_message(LEDBoard::DeletePage.new(page))
  end

  def delete_all
    send_message(LEDBoard::DeleteAll.new)
  end

  private

  attr_reader :id, :output

  def send_packet(packet)
    output.write(packet.to_s)
    output.read
  end

  def send_message(message)
    serialised_message = LEDBoard::MessageSerialiser.serialise(message)
    send_packet LEDBoard::Packet.new(id, serialised_message)
  end

  def send_string(str)
    send_message LEDBoard::Page.new(str)
  end
end
