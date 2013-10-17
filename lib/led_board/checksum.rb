module LEDBoard
  module Checksum
    def self.generate(text)
      text
        .bytes
        .inject(0) { |m, c| m ^ c }
        .to_s(16)
        .upcase
        .rjust(2, "0")
    end
  end
end
