require 'redmine'

Redmine::Plugin.register :redmine_extend_permissions do
  name 'Redmine Extend Permissions plugin'
  author 'Aaron Addleman'
  description 'This is a plugin for Redmine to add additional permissions to views or controllers by over writing the view with code in redmine_extend_permissions/app/views/*'
  version '0.0.2'
  url 'http://9thport.net/2011/03/20/redmine-hide-assigned-to-field-with-role-permissions-plugin/'
  author_url 'http://9thport.net/about/'

  permission :view_assigned_to, :issues => :index
  permission :done_ratio, :issues => :index
  permission :estimated_hours, :issues => :index
  permission :priority_id, :issues => :index
  permission :tracker_id, :issues => :index
  permission :category_id, :issues => :index
  permission :status_id, :issues => :index
end

