class LdapUserController < ApplicationController
  unloadable
  require 'rubygems'
  require 'net/ldap'

  

  def index
    @project = Project.find(params[:project_id])
    ldap = Net::LDAP.new
    ldap.host = 'isea.rwth-aachen.de'
    ldap.port =  389
    ldap.auth   "ksc-test7" , "Iseaa123"
    if ldap.bind
      @authok = true
      filter = Net::LDAP::Filter.eq('telephoneNumber', "*")
      basetree = "dc=isea,dc=rwth-aachen,dc=de"
      attribute = ["telephonenumber","displayName","sn","mail","givenName"]
    @entries = ldap.search( :base => basetree, :filter => filter ,:attributes => attribute, :return_result => true)
    end
  end
end