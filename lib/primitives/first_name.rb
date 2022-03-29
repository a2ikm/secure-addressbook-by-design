module Primitives
  class FirstName < Struct.new(:value)
    include Comparable

    class Type < ActiveRecord::Type::Value
      def serialize(first_name)
        first_name.value
      end

      def deserialize(value)
        FirstName.new(value)
      end
    end

    def to_s
      value
    end

    def <=>(other)
      other.is_a?(self.class) && other.value == value
    end
  end
end

ActiveRecord::Type.register(:first_name, Primitives::FirstName::Type)
