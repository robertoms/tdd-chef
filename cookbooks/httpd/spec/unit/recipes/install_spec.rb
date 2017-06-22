#
# Cookbook Name:: httpd
# Spec:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'httpd::install' do

  #context 'When all attributes are default, on an unspecified platform' do
  context 'When all attributes are default, on CentOS' do
    let(:chef_run) do
      #runner = ChefSpec::ServerRunner.new
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '6.7')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'install the necessary package' do
      expect(chef_run).to install_package( 'httpd' )
    end
  end

  context 'When all attributes are default, on Ubuntu' do
    let(:chef_run) do
      #runner = ChefSpec::ServerRunner.new
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '14.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'install the necessary package' do
      expect(chef_run).to install_package( 'apache2' )
    end
  end






end
