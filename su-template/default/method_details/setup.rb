# We don't want to expose our source code in the API docs.

# https://groups.google.com/forum/#!topic/yardoc/-HH48h-aifs
def source 
  return 
end

# http://stackoverflow.com/a/10345917/486990
#def init
#  super
#  sections.first.delete(:source)
#end