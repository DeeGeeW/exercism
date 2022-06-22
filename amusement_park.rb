class Attendee
  def initialize(height)
    @height = height
  end

  def height
    @height
  end

  def pass_id
    @pass_id
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  def has_pass?
    if @pass_id == nil
      @pass_id = false
    else
      @pass_id = true
    end
  end

  def fit_ride?(height_req)
    @height_req = height_req
    if @height > @height_req
      @height_req = true
    else
      @height_req = false
    end
  end

  allowed
end

attendee = Attendee.new(90)
attendee.issue_pass!(36)
# attendee.revoke_pass!
attendee.pass_id
attendee.fit_ride?(100)
attendee.has_pass?

p attendee
