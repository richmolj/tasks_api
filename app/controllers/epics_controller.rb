class EpicsController < ApplicationController
  def index
    tasks = EpicResource.all(params)
    respond_with(tasks)
  end

  def show
    task = EpicResource.find(params)
    respond_with(task)
  end

  def create
    task = EpicResource.build(params)

    if task.save
      render jsonapi: task, status: 201
    else
      render jsonapi_errors: task
    end
  end

  def update
    task = EpicResource.find(params)

    if task.update_attributes
      render jsonapi: task
    else
      render jsonapi_errors: task
    end
  end

  def destroy
    task = EpicResource.find(params)

    if task.destroy
      render jsonapi: { meta: {} }, status: 200
    else
      render jsonapi_errors: task
    end
  end
end
