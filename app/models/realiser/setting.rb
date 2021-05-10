module Realiser
  # The Realiser Setting
  class Setting < Realiser::ApplicationRecord
    def self.[](key)
      puts key
    end
  end
end
