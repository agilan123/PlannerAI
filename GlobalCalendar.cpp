#include "GlobalCalendar.h"
#include <cctype> 
GlobalCalendar::GlobalCalendar(const vector<vector<int>>& calendar) {
    for(unsigned int i = 0; i < calendar.size(); i++) {
        for(unsigned int j = 0; j < calendar[0].size(); j++) {
            Calendar[i][j] = calendar[i][j];
        }
    }
}


void GlobalCalendar::AddEvent(const string& title, const string& query, int priority, int intensity) {
    int day = 0;
    if(title.find("monday") != std::string::npos || title.find("Monday") != std::string::npos) {
        day = 1;
    }
    else if(title.find("tuesday") != std::string::npos || title.find("Tuesday") != std::string::npos) {
        day = 2;
    }
    else if(title.find("wednesday") != std::string::npos || title.find("Wednesday") != std::string::npos) {
        day = 3;
    }
    else if(title.find("thursday") != std::string::npos || title.find("Thursday") != std::string::npos) {
        day = 4;
    }
    else if(title.find("friday") != std::string::npos || title.find("Friday") != std::string::npos) {
        day = 5;
    }
     else if(title.find("saturday") != std::string::npos || title.find("Saturday") != std::string::npos) {
        day = 5;
    }
    
    for (unsigned int i = 0; i < query.length(); i++ ) {
        if(isdigit(query[i])) {
            if(i < query.length() - 2) {
                if(query[i + 1] == 'a' || query[i + 1] == 'p') {
                    if(query[i + 2] == 'm') {
                        int time = std::stoi(query.substr(i, 1)) - 1;
                        if(query[i + 1] == 'p') {
                            time += 12;
                        }
                        return AddEventToCalendarFinal(title, time, day, priority, intensity);
                    }
                }
            }
        }
    }
    Events[priority].push_back(std::make_pair(title, intensity));
}

// RemoveEvent method
void GlobalCalendar::RemoveEvent(string title, int priority, int which_one) {

        for(unsigned int i = 0; i < Events[priority].size(); i++) {
            if(title == (Events[priority][i].first)) {
                Events[priority].erase(Events[priority].begin() + i);
                break;
            }
        }
}

// ReturnColorings method
std::pair<std::vector<std::vector<int>>, std::vector<std::pair<std::string, std::pair<int, int>>>> GlobalCalendar::ReturnColorings() {
    int current = 0;
    for(unsigned int i = 0; i < 7; i++) {
        for (unsigned int j = 0; j < 24; j++) {
            if(Calendar[i][j] != -1) {
                for(auto& event : Events) {
                    if(event.second.empty()) {
                        continue;
                    }
                    Calendar[i][j] = current;
                    event.second[0].second -= 1;
                    if(event.second[0].second == 0) {
                        returner.push_back(std::make_pair(event.second[0].first, std::make_pair(0, 0)));
                        current++;
                        event.second.erase(event.second.begin());
                    }
                    break;
                }
            }
        }
    }
    return {Calendar, returner};
}
// AddEventToCalendarFinal method
void GlobalCalendar::AddEventToCalendarFinal(const string& title, int time, int day, int priority, int intensity) {
    bool is_there = true;
    for(unsigned int i = time; i < (time + intensity); i++) {
        if(Calendar[day][i] == -1) {
            is_there = false;
        }

    }
    if(is_there) {
        for(unsigned int i = time; i < (time + intensity); i++) {
            Calendar[day][i] == -1;
        }
        returner.push_back(std::make_pair(title, std::make_pair(day, time)));
    }

}
