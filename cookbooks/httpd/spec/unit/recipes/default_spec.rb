#
# Cookbook Name:: httpd
# Spec:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'httpd::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'includes the install recipe' do
      expect(chef_run).to include_recipe('httpd::install')
    end
    it 'includes the configuration recipe' do
      expect(chef_run).to include_recipe('httpd::configuration')
    end
    it 'includes the service recipe' do
      expect(chef_run).to include_recipe('httpd::service')
    end
  end
end
