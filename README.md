# node_sample with Nginx cookbook

This is my first cookbook.

## Chef Commands
- chef generate cookbook <name_cookbook / folder_name>
- chef generate template <name_file.conf>
- chef generate attribute <name.rb>

Topics covered:
- file and folder structure
- Kitchen.yml
- spec folder --> default_spec.rb
- test folder -- default_test.rb
- recipe --> default.rb
- writing Recipes
- Metadata file
- Using Supermarket

## Interpolation in ruby
- Ice cream cones <% %>
- To print/generate output use ice cream cones with an = sign
  - <%= %>


# Installation
- Set path on opscode

# Setting up Chef_License path
- Type variables in search bar
- Edit system environmental variables
- Add environmental variables
  - New variable (New...)
    - Variable: CHEF_LICENSE
    - Value: accept

## Chef - Create Cookbook
chef generate cookbook <foldername>


# Commands
kitchen create
kitchen converge - will spin up the VM with provisions (and destroy old ones if same) that it is going to create
kitchen Setup - gets both machines ready to test them
kitchen verify - will actually run the integration test but not unit tests
kitchen test - will run commands from kitchen create to kitchen destroy and anything in between
kitchen Destroy
- Chef install
- Chef update

## Command for unit tests
chef exec rspec

## Command for integration test
kitchen verify

# Metadata
- Metadata --> go get this resource
- Recipes  --> go use this resource
