# Persistent history (IRB has built-in support since Ruby 2.5 — no extra require)
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = File.expand_path("~/.irb-history")

# Pretty-print output. Prefer amazing_print (the active fork); fall back silently
# if neither gem is installed under the current Ruby.
begin
  require "amazing_print"
  AmazingPrint.irb!
rescue LoadError
  begin
    require "awesome_print"
    AwesomePrint.irb!
  rescue LoadError
    # Built-in `pp` is fine.
  end
end
