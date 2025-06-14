from i3ipc import Connection, Event

i3 = Connection()
focused = i3.get_tree().find_focused()
print(focused.workspace().name)
