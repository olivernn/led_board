class LEDBoard
  class Packet
    def initialize(board_id, data)
      @board_id, @data = board_id, data
    end

    def to_s
      id + data + terminator
    end

    private

    attr_reader :board_id, :data

    def id
      "<ID#{board_id.to_s.rjust(2,"0")}>"
    end

    def terminator
      "<E>"
    end
  end
end
