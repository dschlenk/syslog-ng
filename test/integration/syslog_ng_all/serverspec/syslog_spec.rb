# encoding: UTF-8
require 'serverspec'

set :backend, :exec

describe 'syslog-ng' do

  it 'has an enabled service of syslog-ng' do
    expect(service('syslog-ng')).to be_enabled
  end

  it 'has a running service of syslog-ng' do
    expect(service('syslog-ng')).to be_running
  end

end
