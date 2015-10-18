class MaCategory < MeetupApi

  def options
    {
      query: {
        key: API_KEY
      }
    }
  end

  def current_path
    '/2/categories'
  end

end