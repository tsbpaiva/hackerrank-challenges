#
# Complete the 'getOpenApplications' function below.
#
# The function is expected to return a STRING_ARRAY.
# The function accepts STRING_ARRAY commands as parameter.
#

def getOpenApplications(commands)
  # Write your code here
  open_apps = []
  commands.each do |command|
    open_apps = [] if command == 'clear'
    next if command == 'clear'
    match_data = command.match(/(?<word1>\w+) (?<word2>\w+)/)
    open_apps << match_data[:word2] if match_data[:word1] == 'open'
    if match_data[:word1] == "close"
      for i in (1..match_data[:word2].to_i) do
        open_apps.pop
      end
    end
  end
  open_apps
end


commands = ["clear", "open firefox", "close 4", "open firefox", "open curl", "close 1", "open ps"]

p getOpenApplications(commands)
