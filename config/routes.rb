Rails.application.routes.draw do
  scope path: ApplicationResource.endpoint_namespace, defaults: { format: :jsonapi } do
    resources :tasks
    resources :epics
    mount VandalUi::Engine, at: '/vandal'
    scope defaults: { format: :html } do
      mount GraphitiGraphQL::Engine, at: "/gql"
    end
  end
end
