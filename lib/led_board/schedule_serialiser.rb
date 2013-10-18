class LEDBoard
  class ScheduleSerialiser < MessageSerialiser
    DATE_FORMAT = "%y%m%d%H%M"

    private

    def data
      @data ||= code + start_date + end_date + pages
    end

    def code
      key_value "T", message.id
    end

    def start_date
      format_date(message.starts_at)
    end

    def end_date
      format_date(message.ends_at)
    end

    def pages
      message.pages.join
    end

    def format_date(date)
      date.strftime(DATE_FORMAT)
    end
  end
end
