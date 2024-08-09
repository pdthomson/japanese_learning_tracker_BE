class JapanSerializer
  class << self
    def create_japans(japans)
      {
        data: japans.map do |japan|
          {
            id: "#{japan.id}",
            type: "japan",
            attributes: {
              kanji: japan.kanji,
              definition: japan.definition,
              romanji: japan.romanji
              }
            }
        end
      }
    end

    def create_japanese(japan)
      {
        data:
          {
            id: "#{japan.id}",
            type: "japan",
              attributes: {
                kanji: japan.kanji,
                definition: japan.definition,
                romanji: japan.romanji
              }
            }
      }
    end
  end
end