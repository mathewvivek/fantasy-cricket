module SettingsHelper

  def authorize_for_edit?
    return true if DateTime.now.in_time_zone("Kolkata") > "#{Date.today} 18:00:00 +0530"
  end

end
