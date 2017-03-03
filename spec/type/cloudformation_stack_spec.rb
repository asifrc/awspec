require 'spec_helper'
Awspec::Stub.load 'cloudformation_stack'

describe cloudformation_stack('my-cloudformation-stack') do
  it { should exist }
end

describe cloudformation_stack('not-a-stack') do
  it { should_not exist }
end
