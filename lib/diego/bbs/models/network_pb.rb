# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: network.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("network.proto", :syntax => :proto3) do
    add_message "diego.bbs.models.Network" do
      map :properties, :string, :string, 1
    end
  end
end

module Diego
  module Bbs
    module Models
      Network = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("diego.bbs.models.Network").msgclass
    end
  end
end
