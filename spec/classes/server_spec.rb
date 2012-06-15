require 'spec_helper'

describe 'ssh::server' do
  context 'on Ubuntu 12.04 (Precise)' do
    let(:facts) { { 
      :lsbdistcodename  => 'precise',
      :lsbdistrelease   => '12.04',
      :operatingsystem  => 'Ubuntu',
    } }

    let(:params) { { :monitor => false } }

    it do
      should_not contain_class('ssh::server::monitor')
    end

    it do
      should contain_file('/etc/ssh').with({
        'ensure'  => 'directory',
        'group'   => 'root',
        'mode'    => '0600',
        'owner'   => 'root',
      })
    end

    it do
      should contain_file('/etc/ssh/sshd_config').with({
        'ensure'  => 'file',
        'group'   => 'root',
        'mode'    => '0600',
        'owner'   => 'root',
      })
    end

    it do
      should contain_package('openssh-server').with_ensure('present')
    end

    it do
      should contain_service('ssh').with({
        'ensure'      => 'running',
        'enable'      => true,
        'hasstatus'   => true,
        'hasrestart'  => true,
      })
    end
  end
end

# vim:sw=2:ts=2:expandtab:textwidth=79
