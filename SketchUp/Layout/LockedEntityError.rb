# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This is raised whenever a method attempts to modify any {Layout::Entity}
# that is individually locked.
#
# @version LayOut 2018
class Layout::LockedEntityError < ArgError

end
