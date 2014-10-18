
include_recipe "aws"

unless node['aws-tag']['tags'].empty? || node['aws-tag']['tags'].nil?
    aws_resource_tag node['opsworks']['instance']['aws_instance_id'] do
        tags(node['aws-tag']['tags'])
        action :update
    end
end
