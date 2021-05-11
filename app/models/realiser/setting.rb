module Realiser
  # The Realiser Setting
  class Setting < Realiser::ApplicationRecord
    validates :key, uniqueness: { case_sensitive: false }, presence: true
    validates :value, presence: true

    def self.[](key)
      find_by(key: key).try(:value)
    end
  end
end
