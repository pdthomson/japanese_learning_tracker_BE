class Japan < ApplicationRecord
  validates_presence_of :kanji, :definition, :romanji
  validates_uniqueness_of :kanji
end
