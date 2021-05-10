module Realiser
  # The Realiser Setting
  class Setting < Realiser::ApplicationRecord
    validates :key, presence: true
    validates :value, presence: true

    def self.[](key)
      puts key
    end
  end
end
