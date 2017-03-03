require 'spec_helper'
Awspec::Stub.load 'cloudformation_stack'

describe cloudformation_stack('my-cloudformation-stack') do
  it { should exist }
end
