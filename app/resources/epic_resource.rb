class EpicResource < TaskResource
  has_many :milestones, remote: "http://localhost:3005/api/v1/milestones"
end
