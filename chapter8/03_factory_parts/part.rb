class Part
  attr_reader :name, :description, :needs_spare

  def initialize(args)
    @name = args[:name]
    @description = args[:description]
    # See also https://apidock.com/ruby/Hash/fetch
    @needs_spare = args.fetch(:needs_spare, true)
  end
end