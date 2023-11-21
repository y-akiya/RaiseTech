require 'spec_helper'

listen_port = 80

describe command('/home/ec2-user/.rbenv/shims/ruby -v') do
  its(:stdout) { should include '3.1.2' }
end

describe command('/home/ec2-user/.rbenv/shims/bundler -v') do
  its(:exit_status) { should eq 0 }
end

describe command('/home/ec2-user/.rbenv/shims/rails -v') do
  its(:exit_status) { should eq 0 }
end

describe command('node -v') do
  let(:disable_sudo) { true }
  its(:stdout) { should include '17.9.1' }
end

describe command('yarn -v') do
  let(:disable_sudo) { true }
  its(:exit_status) { should eq 0 }
end

describe package('mysql-community-client') do
  it { should be_installed }
end

describe package('nginx') do
  it { should be_installed }
end

describe command('pgrep -f unicorn_rails') do
  its(:exit_status) { should eq 0 }
end

describe service('nginx') do
  it { should be_running }
end

describe port(listen_port) do
  it { should be_listening }
end

describe command('curl http://127.0.0.1:#{listen_port}/_plugin/head/ -o /dev/null -w "%{http_code}\n" -s') do
  its(:stdout) { should match /^200$/ }
end
