# coding: utf-8
require 'spec_helper'

describe 'Login Scenario', js: true do
  it_should_behave_like 'Login', false
  it_should_behave_like 'Login', true
end
