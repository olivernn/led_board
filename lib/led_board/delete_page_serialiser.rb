class LEDBoard
  class DeletePageSerialiser < MessageSerialiser
    private

    def data
      @data ||= "<DL#{message.line}P#{message.page}>"
    end
  end
end
