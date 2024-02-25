import subprocess
from collections import defaultdict

class GlobalCalendar:
    def __init__(self, calendar, events):
        self.calendar = calendar
        self.events = defaultdict(list, events)

    def add_event(self, title, query, priority, intensity):
        day_mapping = {
            "monday": 1, "tuesday": 2, "wednesday": 3,
            "thursday": 4, "friday": 5, "saturday": 6
        }
        day = next((day_mapping[day] for day in day_mapping if day in title.lower()), 0)

        for i, char in enumerate(query):
            if char.isdigit() and i < len(query) - 2:
                if query[i+1] in 'ap' and query[i+2] == 'm':
                    time = int(query[i]) - 1
                    if query[i+1] == 'p':
                        time += 12
                    return self.add_event_to_calendar_final(title, time, day, priority, intensity)

        self.events[priority].append((title, intensity))

    def remove_event(self, title, priority):
        self.events[priority] = [event for event in self.events[priority] if event[0] != title]

    def return_colorings(self):
        current = 0
        returner = []
        for i in range(7):
            for j in range(24):
                if self.calendar[i][j] != -1:
                    for priority, events in self.events.items():
                        if not events:
                            continue
                        self.calendar[i][j] = current
                        events[0] = (events[0][0], events[0][1] - 1)
                        if events[0][1] == 0:
                            returner.append((events[0][0], [i, j, priority]))
                            current += 1
                            events.pop(0)
                        break
        return self.calendar, returner

    def add_event_to_calendar_final(self, title, time, day, priority, intensity):
        is_there = all(self.calendar[day][i] != -1 for i in range(time, time + intensity))
        if is_there:
            for i in range(time, time + intensity):
                self.calendar[day][i] = -1
            returner.append((title, [day, time, priority]))
