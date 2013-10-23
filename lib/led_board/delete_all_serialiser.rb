class LEDBoard
  class DeleteAllSerialiser < MessageSerialiser
    private

    def data
      @data ||= "<D*>"
    end
  end
end
