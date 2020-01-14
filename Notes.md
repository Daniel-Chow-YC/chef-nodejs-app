# Installation
- Set path on opscode?

# Setting up Chef_License path
- Type variables in search bar
- Edit system environmental variables
- Add environmental variables
  - New variable (New...)
    - Variable: CHEF_LICENSE
    - Value: accept


# Commands
kitchen create
kitchen converge - will bring the machine into the VM that it is going to create
kitchen Setup - gets both machines ready to test them
kitchen Verify - will actually run the integration test but not unit tests
kitchen test - will run commands from kitchen create to kitchen destroy and anything in between
kitchen Destroy

# Metadata
- Metadata --> go get this resource
- Recipes  --> go use this resource
