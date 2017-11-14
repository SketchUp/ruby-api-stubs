# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This is raised whenever a method attempts to modify any {Layout::Entity}
# that resides on a locked {Layout::Layer}, or when attempting to change the
# shared attribute of a locked {Layout::Layer}.
#
# @version LayOut 2018
class Layout::LockedLayerError < ArgError

end
