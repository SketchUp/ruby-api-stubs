# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# Http::Request objects allows you to send HTTP request to HTTP servers.
#
# @version SketchUp 2017
class Sketchup::Http::Request

  # Instance Methods

  # Gets the HTTP body that is going to be used when sending the request.
  #
  # @example
  #   @request = Sketchup::Http::Request.new("http://localhost:8080")
  #
  #   @request.start do |request, response|
  #     puts "body: #{request.body}"
  #   end
  #
  # @return [String]
  #
  # @version SketchUp 2017
  def body
  end

  # Sets the HTTP body that is going to be used when sending the request.
  #
  # @example
  #   @request = Sketchup::Http::Request.new("http://localhost:8080")
  #   @request.body = "Hello World"
  #
  #   @request.start do |request, response|
  #     puts "body: #{request.body}"
  #   end
  #
  # @param [String] body
  #   A String containing the body.
  #
  # @return [String]
  #
  # @version SketchUp 2017
  def body=(body)
  end

  # Cancels the request.
  #
  # @example
  #   @request = Sketchup::Http::Request.new("http://localhost:8080")
  #   @request.start do |request, response|
  #     puts "body: #{response.body}"
  #   end
  #
  #   @request.cancel
  #
  # @return [true]
  #
  # @version SketchUp 2017
  def cancel
  end

  # Returns the HTTP headers that are going to be used when sending the request.
  #
  # @example
  #   @request = Sketchup::Http::Request.new("http://localhost:8080")
  #   @request.headers = { :key1 => "value1", :key2 => "value2" }
  #
  #   @request.headers.each do |key, value|
  #     puts "#{key}: #{value}"
  #   end
  #
  # @return [Hash]
  #
  # @version SketchUp 2017
  def headers
  end

  # Sets the HTTP headers that are going to be used when sending the request.
  #
  # @example
  #   @request = Sketchup::Http::Request.new("http://localhost:8080")
  #   @request.headers = { :key1 => "value1", :key2 => "value2" }
  #
  #   @request.headers.each do |key, value|
  #     puts "#{key}: #{value}"
  #   end
  #
  # @param [Hash] headers
  #   A key/value pair hash.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  def headers=(headers)
  end

  # The default port is 80, to use a different port define it in the URL when
  # creating a new {Sketchup::Http::Request}.
  #
  # The +method+ parameter accepts any custom HTTP method or one of the
  # following:
  # * +Sketchup::Http::GET+
  # * +Sketchup::Http::POST+
  # * +Sketchup::Http::PUT+
  # * +Sketchup::Http::DELETE+
  # * +Sketchup::Http::HEAD+
  # * +Sketchup::Http::OPTIONS+
  #
  # @example
  #   @request = Sketchup::Http::Request.new("http://localhost:8080", Sketchup::Http::GET)
  #
  #   @request.start do |request, response|
  #     puts "body: #{response.body}"
  #   end
  #
  # @note If no reference is kept to the {Sketchup::Http::Request}, it can be garbage collected,
  #   making the download silently fail. This is especially noticeable for larger downloads that
  #   takes longer time.
  #
  # @param [String] url
  #
  # @param [String] method
  #
  # @return [Sketchup::Http::Request]
  #
  # @version SketchUp 2017
  def initialize(url, method = Sketchup::Http::GET)
  end

  # Returns the HTTP method that is going to be used when sending the request.
  #
  # @example
  #   @request = Sketchup::Http::Request.new("http://localhost:8080")
  #
  #   @request.start do |request, response|
  #     puts "request.method: #{request.method}"
  #   end
  #
  # @return [String]
  #
  # @version SketchUp 2017
  def method
  end

  # Sets the HTTP method that is going to be used when sending the request.
  # The value can be any custom HTTP method or one of the following:
  # * +Sketchup::Http::GET+
  # * +Sketchup::Http::POST+
  # * +Sketchup::Http::PUT+
  # * +Sketchup::Http::DELETE+
  # * +Sketchup::Http::HEAD+
  # * +Sketchup::Http::OPTIONS+
  #
  # @example
  #   @request = Sketchup::Http::Request.new("http://localhost:8080")
  #   @request.method = Sketchup::Http::POST
  #
  #   @request.start do |request, response|
  #     puts "request.method: #{request.method}"
  #   end
  #
  # @param [String] method
  #   A string containing the HTTP method name.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  def method=(method)
  end

  # Adds a download progress callback block that will get called everytime we
  # have received data from the server until the download finishes.
  #
  # @example
  #   @request = Sketchup::Http::Request.new("http://localhost:8080")
  #
  #   @request.set_download_progress_callback do |current, total|
  #     if total == -1
  #       puts "#{current}B"
  #     else
  #       percentage = (current.to_f / total * 100).round
  #       puts "#{current}B / #{total}B (#{percentage}%)"
  #     end
  #   end
  #
  #   @request.start
  #
  # @note +total+ is -1 if the server doesn't specify a file size in the response header.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  #
  # @yield A block to be invoked everytime data is downloaded from the server.
  #
  # @yieldparam [Integer] current
  #   Current bytes transferred.
  #
  # @yieldparam [Integer] total
  #   Total bytes to transfer.
  def set_download_progress_callback
  end

  # Adds a upload progress callback block that will get called everytime we have
  # uploaded data to the server until the upload finishes.
  #
  # @example
  #   @request = Sketchup::Http::Request.new("http://localhost:8080")
  #
  #   @request.set_upload_progress_callback do |current, total|
  #     puts "upload current: #{current}"
  #     puts "upload total: #{total}"
  #   end
  #
  #   request.start
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  #
  # @yield A block to be invoked everytime data is sent to the server.
  #
  # @yieldparam [Integer] current
  #   Current bytes transferred.
  #
  # @yieldparam [Integer] total
  #   Total bytes to transfer.
  def set_upload_progress_callback
  end

  # Starts the request with optionally a response callback block.
  #
  # @example
  #   @request = Sketchup::Http::Request.new("http://localhost:8080")
  #
  #   @request.start do |request, response|
  #     puts "body: #{response.body}"
  #   end
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  #
  # @yieldparam [Sketchup::Http::Request] request
  #
  # @yieldparam [Sketchup::Http::Response] response
  def start
  end

  # Returns the internal status code. It can be one of the following:
  # * +Sketchup::Http::STATUS_UNKNOWN+
  # * +Sketchup::Http::STATUS_SUCCESS+
  # * +Sketchup::Http::STATUS_PENDING+
  # * +Sketchup::Http::STATUS_CANCELED+
  # * +Sketchup::Http::STATUS_FAILED+
  #
  # @example
  #   @request = Sketchup::Http::Request.new("http://localhost:8080")
  #   @request.start
  #   puts "response.status: #{@request.status}"
  #
  # @return [Integer]
  #
  # @version SketchUp 2017
  def status
  end

  # Returns a copy of the Request's URL.
  #
  # @example
  #   @request = Sketchup::Http::Request.new("http://localhost:8080")
  #
  #   @request.start do |request, response|
  #     puts "url: #{request.url}"
  #   end
  #
  # @return [String]
  #
  # @version SketchUp 2017
  def url
  end

end
