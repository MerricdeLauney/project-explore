# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: security_group.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("security_group.proto", :syntax => :proto3) do
    add_message "diego.bbs.models.PortRange" do
      optional :start, :uint32, 1
      optional :end, :uint32, 2
    end
    add_message "diego.bbs.models.ICMPInfo" do
      optional :type, :int32, 1
      optional :code, :int32, 2
    end
    add_message "diego.bbs.models.SecurityGroupRule" do
      optional :protocol, :string, 1
      repeated :destinations, :string, 2
      repeated :ports, :uint32, 3
      optional :port_range, :message, 4, "diego.bbs.models.PortRange"
      optional :icmp_info, :message, 5, "diego.bbs.models.ICMPInfo"
      optional :log, :bool, 6
      repeated :annotations, :string, 7
    end
  end
end

module Diego
  module Bbs
    module Models
      PortRange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("diego.bbs.models.PortRange").msgclass
      ICMPInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("diego.bbs.models.ICMPInfo").msgclass
      SecurityGroupRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("diego.bbs.models.SecurityGroupRule").msgclass
    end
  end
end
