class Rack::TldLength

  def initialize(app, host_pattern, host_tld_length)
    @app = app
    @host_pattern = Regexp.new(host_pattern)
    @host_tld_length = host_tld_length
  end

  def call(env)
    original_tld_length = tld_length

    request = Rack::Request.new(env)

    set_tld_length(@host_tld_length) if request.host =~ @host_pattern

    @app.call(env)
  ensure
    set_tld_length(original_tld_length)
  end

  private

  def tld_length
    ActionDispatch::Http::URL.tld_length
  end
  def set_tld_length(length)
    ActionDispatch::Http::URL.tld_length = length
  end

end
