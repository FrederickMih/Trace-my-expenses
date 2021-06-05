module ApplicationHelper
  def creation_date(mydate)
    mydate.created_at.strftime('%B %d %Y, %l:%M%P')
  end
end
