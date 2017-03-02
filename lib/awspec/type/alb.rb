module Awspec::Type
  class Alb < ResourceBase
    def resource_via_client
      @resource_via_client ||= find_alb(@display_name)
    end

    def id
      @id = resource_via_client.load_balancer_name if resource_via_client
    end
  end
end
