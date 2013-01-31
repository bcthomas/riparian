class FlowTaskResource < ActiveRecord::Base
  attr_accessible :type, :resource_type, :resource_id, :file, :extra

  belongs_to :flow_task
  belongs_to :resource, :polymorphic => true

  has_attached_file :file,
    :path => Riparian.config.flow_task_resource_file_path,
    :url => Riparian.config.flow_task_resource_file_url
    
  validates_attachment_size :file, 
    :greater_than => Riparian.config.flow_task_resource_file_size_greater_than,
    :less_than => Riparian.config.flow_task_resource_file_size_less_than
end
