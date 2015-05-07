require "jattrs/version"

module Jattrs
  def self.included(base)
    base.extend(JsonAttributesClassMethods)
  end

  private

    module JsonAttributesClassMethods
      def jattr_accessor(field_name, *methods)
        jattr_reader(field_name, methods)
        jattr_writer(field_name, methods)
      end

      def jattr_reader(field_name, methods)
        methods.each do |method|
          next if respond_to?(method)

          define_method("#{method}") do
            (send(field_name) || {})[method.to_s]
          end
        end
      end

      def jattr_writer(field_name, methods)
        methods.each do |method|
          next if respond_to?(method)

          define_method("#{method}=") do |object_value|  
            if send(field_name).nil?
              self.send("#{field_name}=", { method.to_s => object_value })
            else
              send(field_name)[method.to_s] = object_value
            end
          end
        end
      end
    end
end