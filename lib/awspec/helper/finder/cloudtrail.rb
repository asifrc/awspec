module Awspec::Helper
  module Finder
    module Cloudtrail
      def select_all_trails
        cloudtrail_client.describe_trails.trail_list
      end

      def find_trail(id)
        ret = cloudtrail_client.describe_trails.trail_list.find do |trail|
          trail.name == id
        end
      end

      def get_trail_status(id)
        cloudtrail_client.get_trail_status(name: id)
      end

      def is_logging?(id)
        ret = get_trail_status(id).is_logging
      end
    end
  end
end
