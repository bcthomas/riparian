class FlowTaskInput < FlowTaskResource
  attr_accessible :resource
  belongs_to :flow_task, :inverse_of => :inputs
end
