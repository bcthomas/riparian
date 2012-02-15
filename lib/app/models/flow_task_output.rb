class FlowTaskOutput < FlowTaskResource
  attr_accessible :file
  belongs_to :flow_task, :inverse_of => :outputs
end
