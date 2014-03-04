require 'dm-core'

module DataMapper
  class Property
    class Regexp < String

      def load(value)
        ::Regexp.new(value) unless value.nil?
      end

      def dump(value)
        value unless value.nil?
      end

      def typecast_to_primitive(value)
        load(value)
      end


    end
  end
end
