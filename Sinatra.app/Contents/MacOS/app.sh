#!/usr/bin/env bash

cd `dirname "$0"`

if [ ! -f sinatra ]
	then
	ruby -e "require 'rubygems/dependency_installer'; install_dir = File.writable?(Gem.dir) ? Gem.dir : Gem.user_dir; Gem::DependencyInstaller.new(:install_dir => install_dir).new.install 'sinatra'; Gem.refresh"
fi

ruby -e 'require "sinatra"; get("/") { "hrmm" }'&

./apache-callback-mac -url "http://localhost:4567"