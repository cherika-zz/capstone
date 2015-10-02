class Event
  attr_accessor :title, :start, :url

  def self.all
    Application.all.map do |app|
      new( app.due_date.to_date,
           app.name,
           Rails.application.routes.url_helpers.state_application_path(app.state, app) )
    end
  end

  def initialize(date, title, url)
    @start = date
    @title = title
    @url = url
  end
end
