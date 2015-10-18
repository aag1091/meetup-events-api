class MaEvent < MeetupApi

  def options
    {
      query: {
        key: API_KEY,
        group_id: group_ids
      }
    }
  end

  def current_path
    '/2/events'
  end

  def groups
    interest_group.groups
  end

  def group_ids
    groups.map(&:group_id).join(',')
  end

end