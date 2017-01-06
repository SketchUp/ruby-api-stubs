# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# Http::Response objects allows you to get the response information from the
# server, you can only receive the Http::Response if you have attached a
# callback block when calling start from the Http::Request object.
#
# @version SketchUp 2017
class Sketchup::Http::Response

  # Instance Methods

  # Gets the http body that was received from the server as a string encoded
  # using the charset provided in the Content-Type of the server response, if
  # no charset is specified, ASCII-8BIT will be used.
  #
  # @example
  #   request = Sketchup::Http::Request.new("http://localhost:8080")
  #
  #   request.start do |request, response|
  #     puts "body: " + response.body
  #   end
  #
  # @return [String]
  #
  # @version SketchUp 2017
  def body
  end

  # Returns the http headers that were sent by the server.
  #
  # @example
  #   request = Sketchup::Http::Request.new("http://localhost:8080")
  #
  #   request.start do |request, response|
  #     response.headers.each do |key, value|
  #       puts "#{key}: #{value}"
  #     end
  #   end
  #
  # @return [Hash]
  #
  # @version SketchUp 2017
  def headers
  end

  # Returns the HTTP response status code as defined in rfc2616.
  #
  # @example
  #   request = Sketchup::Http::Request.new("http://localhost:8080")
  #
  #   request.start do |request, response|
  #     puts "http status code: #{response.status_code}"
  #   end
  #
  # @return [int]
  #
  # @version SketchUp 2017
  def status_code
  end

end
