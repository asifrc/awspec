Aws.config[:cloudformation] = {
  stub_responses: {
    describe_stacks: {
      stacks: [
        {
          stack_id: 'arn:aws:cloudformation:us-west-2:1234567890:stack/my-stack/ab1234-de5678',
          stack_name: 'my-cloudformation-stack',
          change_set_id: nil,
          description: nil,
          parameters: [],
          creation_time: Time.new(2017, 3, 2),
          last_updated_time: nil,
          stack_status: 'CREATE_COMPLETE',
          stack_status_reason: nil,
          disable_rollback: false,
          notification_arns: [],
          timeout_in_minutes: nil,
          capabilities: ['CAPABILITY_IAM'],
          outputs: [],
          role_arn: nil,
          tags: []
        }
      ]
    }
  }
}
