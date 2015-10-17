require 'json'
require_relative 'customer'

class MatchedCustomers
  def initialize(json_file)
    @json_file = File.new(json_file)
  end

  def output
    list_order_by_id.each do |customer|
      puts "ID: #{customer.user_id}\tName: #{customer.name}"
    end
  end

  private

  attr_reader :json_file

  def list_order_by_id
    list.sort_by { |customer| customer.user_id }
  end

  def list
    @_list ||= begin
      customers = []

      json_file.each_line do |line|
        customer = Customer.new(JSON.parse(line))

        if customer.close_to_doublin_office?
          customers << customer
        end
      end

      customers
    end
  end
end
