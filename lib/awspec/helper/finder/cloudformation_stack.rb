module Awspec::Helper
  module Finder
    module CloudformationStack
      def find_stack(stack_id)
        response = cloudformation_client.describe_stacks({
                                                           stack_name: stack_id
                                                         })
        stacks = response[0].select do |stack|
          stack.stack_id.eql?(stack_id) || stack.stack_name.eql?(stack_id)
        end
        stacks[0]
      end
    end
  end
end
