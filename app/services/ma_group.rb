class MaGroup < MeetupApi

  def options
    {
      query: {
        key: API_KEY,
        zip: '23508',
        category_id: '34',
        order: 'members'
      }
    }
  end

  def current_path
    '/2/groups'
  end

end