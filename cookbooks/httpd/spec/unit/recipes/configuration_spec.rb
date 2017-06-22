#
# Cookbook Name:: httpd
# Spec:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'httpd::configuration' do
  context 'When all attributes are default, on CentOS' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '6.7')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it "create the needed file" do
      expect(chef_run).to create_file("/var/www/html/index.html")
    end
  end
  describe 'httpd::configuration' do
    context 'When all attributes are default, on Ubuntu' do
      let(:chef_run) do
        runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '14.04')
        runner.converge(described_recipe)
      end

      it 'converges successfully' do
        expect { chef_run }.to_not raise_error
      end

      it "create the needed file" do
        expect(chef_run).to create_file("/var/www/html/index.html")
      end
    end


end
