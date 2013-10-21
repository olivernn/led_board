class LEDBoard
  class DeletePage < Message
    attr_reader :page, :line

    def initialize(page, line: 1)
      @page, @line = page, line
    end
  end
end
