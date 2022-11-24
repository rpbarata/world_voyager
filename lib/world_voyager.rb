# frozen_string_literal: true

require_relative 'world_voyager/version'

module WorldVoyager

  class Error < StandardError; end

  DATABASE_PATH = 'lib/db/worldcities.csv'

  @data = []

  class << self

    def install
      require 'csv'

      CSV.foreach(DATABASE_PATH, headers: true, header_converters: :symbol) do |row|
        @data << row.to_h
      end
    end

    def countries
      @data.map { |d| d[:country] }.uniq.sort
    end

    def districts(country)
      @data.select { |d| d[:country] == country }.map { |d| d[:district] }.uniq.sort
    end

    def cities(district)
      @data.select { |d| d[:district] == district }.map { |d| d[:city] }.uniq.sort
    end

  end

end
