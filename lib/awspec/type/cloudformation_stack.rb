module Awspec::Type
  class CloudformationStack < Base
    aws_resource Aws::CloudFormation::Stack

    def resource_via_client
      @resource_via_client ||= find_stack(@display_name)
    end

    def id
      @id ||= resource_via_client.stack_id if resource_via_client
    end
  end
end
