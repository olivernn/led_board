class LEDBoard
  class Schedule < Message
    ONE_DAY = 86_400

    attr_reader :pages, :id, :starts_at, :ends_at

    def initialize(pages, id: 'A', starts_at: Time.now, ends_at: Time.now + ONE_DAY)
      @pages = pages
      @id = id
      @starts_at = starts_at
      @ends_at = ends_at
    end
  end
end
