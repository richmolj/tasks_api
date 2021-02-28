class TaskResource < ApplicationResource
  federated_type("Team").has_many :tasks
  federated_belongs_to :employee
  federated_belongs_to :team

  self.polymorphic = %w[FeatureResource BugResource EpicResource]
  attribute :title, :string
  attribute :type, :string

  belongs_to :employee, remote: "http://localhost:3000/api/v1/employees"
  belongs_to :team, remote: "http://localhost:3003/api/v1/teams"
  attribute :employee_id, :integer, only: [:filterable, :readable]
  attribute :team_id, :integer, only: [:filterable, :readable]
end
