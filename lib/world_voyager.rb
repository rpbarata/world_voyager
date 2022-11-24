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
      install if @data.empty?

      @data.map { |d| d[:country] }.uniq.sort
    end

    def districts(country)
      install if @data.empty?

      country_downcased = country.downcase
      @data.select { |d| d[:country].downcase == country_downcased }.map { |d| d[:district] }.uniq.sort
    end

    def cities(district)
      install if @data.empty?

      district_downcased = district.downcase
      @data.select { |d| d[:district].downcase == district_downcased }.map { |d| d[:city] }.uniq.sort
    end

  end

end
