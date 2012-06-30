module Admin::AdminControllerMixin
  def self.included(base)
    base.send :include, GDS::SSO::ControllerMethods

    base.before_filter :authenticate_user!
    base.send :defaults, :route_prefix => 'admin'
  end
end
