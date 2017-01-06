# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# Http::Request objects allows you to send HTTP request to HTTP servers.
#
# @version SketchUp 2017
class Sketchup::Http::Request

  # Instance Methods

  # Gets the http body that is going to be used when sending the request.
  #
  # @example
  #   request = Sketchup::Http::Request.new("http://localhost:8080")
  #
  #   request.start do |request, response|
  #     puts "body: #{request.body}"
  #   end
  #
  # @return [String]
  #
  # @version SketchUp 2017
  def body
  end

  # Sets the http body that is going to be used when sending the request.
  #
  # @example
  #   request = Sketchup::Http::Request.new("http://localhost:8080")
  #   request.body = "Hello World"
  #
  #   request.start do |request, response|
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
  #   request = Sketchup::Http::Request.new("http://localhost:8080")
  #   request.start do |request, response|
  #     puts "body: #{response.body}"
  #   end
  #
  #   request.cancel
  #
  # @return [true]
  #
  # @version SketchUp 2017
  def cancel
  end

  # Returns the http headers that are going to be used when sending the request.
  #
  # @example
  #   request = Sketchup::Http::Request.new("http://localhost:8080")
  #   request.headers = { :key1 => "value1", :key2 => "value2" }
  #
  #   request.headers.each do |key, value|
  #     puts "#{key}: #{value}"
  #   end
  #
  # @return [Hash]
  #
  # @version SketchUp 2017
  def headers
  end

  # Sets the http headers that are going to be used when sending the request.
  #
  # @example
  #   request = Sketchup::Http::Request.new("http://localhost:8080")
  #   request.headers = { :key1 => "value1", :key2 => "value2" }
  #
  #   request.headers.each do |key, value|
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

  # The new method is used to create a new Sketchup::Http::Request.
  #
  # The default port is 80, to use a different port define it in the URL when
  # creating a new Http::Request
  #
  # Keeping a reference to the request is necessary in order to ensure the use of
  # the response.
  #
  # The +method+ parameter accepts any custom http method or one of the
  # following:
  # * +Sketchup::Http::GET+
  # * +Sketchup::Http::POST+
  # * +Sketchup::Http::PUT+
  # * +Sketchup::Http::DELETE+
  # * +Sketchup::Http::HEAD+
  # * +Sketchup::Http::OPTIONS+
  #
  # @example
  #   request = Sketchup::Http::Request.new("http://localhost:8080", Sketchup::Http::GET)
  #
  #   request.start do |request, response|
  #     puts "body: #{response.body}"
  #   end
  #
  # @param [String] url
  #   The targetted URL.
  #
  # @param [String] method
  #   Optionally, the request method to use, the
  #   default is Sketchup::Http::GET
  #
  # @return [Request]
  #
  # @version SketchUp 2017
  def initialize(url, method)
  end

  # Returns the http method that is going to be used when sending the request.
  #
  # @example
  #   request = Sketchup::Http::Request.new("http://localhost:8080")
  #
  #   request.start do |request, response|
  #     puts "request.method: #{request.method}"
  #   end
  #
  # @return [String]
  #
  # @version SketchUp 2017
  def method
  end

  # Sets the http method that is going to be used when sending the request.
  # The value can be any custom http method or one of the following:
  # * +Sketchup::Http::GET+
  # * +Sketchup::Http::POST+
  # * +Sketchup::Http::PUT+
  # * +Sketchup::Http::DELETE+
  # * +Sketchup::Http::HEAD+
  # * +Sketchup::Http::OPTIONS+
  #
  # @example
  #   request = Sketchup::Http::Request.new("http://localhost:8080")
  #   request.method = Sketchup::Http::POST
  #
  #   request.start do |request, response|
  #     puts "request.method: #{request.method}"
  #   end
  #
  # @param [String] method
  #   A string containing the http method name.
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
  #   request = Sketchup::Http::Request.new("http://localhost:8080")
  #
  #   request.set_download_progress_callback do |current, total|
  #     puts "download current: #{current}"
  #     puts "download total: #{total}"
  #   end
  #
  #   request.start
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
  #   request = Sketchup::Http::Request.new("http://localhost:8080")
  #
  #   request.set_upload_progress_callback do |current, total|
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

  # Starts the request and optionally add a callback block.
  #
  # @example
  #   request = Sketchup::Http::Request.new("http://localhost:8080")
  #
  #   request.start do |request, response|
  #     puts "body: #{response.body}"
  #   end
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  #
  # @yield A block that is invoked when the request has finished.
  #
  # @yieldparam [FileUploadRequest] request
  #   The FileUploadRequest object.
  #
  # @yieldparam [Response] response
  #   The response object, use this to read the
  #   server response.
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
  #   request = Sketchup::Http::Request.new("http://localhost:8080")
  #   request.start
  #   puts "response.status: #{request.status}"
  #
  # @return [int]
  #
  # @version SketchUp 2017
  def status
  end

  # Returns a copy of the Request's URL.
  #
  # @example
  #   request = Sketchup::Http::Request.new("http://localhost:8080")
  #
  #   request.start do |request, response|
  #     puts "url: #{request.url}"
  #   end
  #
  # @return [String]
  #
  # @version SketchUp 2017
  def url
  end

end
