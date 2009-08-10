require "transporter"
require "tinder"

module Transporter
  class Campfire < Service
    validate_config do |config|
      config.has_keys      :subdomain, :room, :login, :password
      config.key_is_one_of :ssl, [true, false]
    end

    def deliver(package)
      room.speak(package.short)
    end

    private

    def room
      return @room if @room
      campfire = Tinder::Campfire.new(config[:subdomain], :ssl => config[:ssl], :proxy => config[:proxy])
      campfire.login(config[:login], config[:password])
      @room = campfire.find_room_by_name(config[:room])
    end
  end

  register :campfire, Campfire
end
