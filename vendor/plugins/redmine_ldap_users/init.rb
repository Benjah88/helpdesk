require 'redmine'

Redmine::Plugin.register :redmine_ldap_users do
  name 'Redmine Ldap Users plugin'
  author 'Benjamin Eichel'
  description 'Dieses Plugin ließt aus dem Active Directory alle User aus, welche eine Telefonnummer hinterlegt haben.'
  version '0.0.1'
  url 'http://www.benjamineichel.de'
  author_url 'http://www.benjamineichel.de'
  #permission :ldap_user, { :ldap_user => ['index']}, :public => true
  #menu :project_menu, :ldap_user, { :controller => 'ldap_user', :action => 'index'}, :caption => 'Telefonbuch', :after => :settings, :param => :project_id
end
