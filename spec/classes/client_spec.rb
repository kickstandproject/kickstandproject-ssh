require 'spec_helper'

describe 'ssh::client', :type => :class do
  context 'on Ubuntu 12.04 (Precise)' do
    let(:facts) { { 
      :lsbdistcodename  => 'precise',
      :lsbdistrelease   => '12.04',
      :operatingsystem  => 'Ubuntu',
    } }

    it do
      should contain_file('/etc/ssh').with({
        'ensure'  => 'directory',
        'group'   => 'root',
        'mode'    => '0644',
        'owner'   => 'root',
      })
    end

    it do
      should contain_file('/etc/ssh/ssh_config').with({
        'ensure'  => 'file',
        'group'   => 'root',
        'mode'    => '0644',
        'owner'   => 'root',
      })
    end

    it do
      should contain_package('openssh-client').with_ensure('present')
    end
  end
end

# vim:sw=2:ts=2:expandtab:textwidth=79
