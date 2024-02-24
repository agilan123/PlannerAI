#include <string>
#include <vector>
#include <map>
#include <utility> 

using namespace std;

class GlobalCalendar {
public:
    GlobalCalendar(const vector<vector<int>>& calendar);

    void AddEvent(const string& title, const string& query, int priority, int intensity);
    void RemoveEvent(string title, int priority, int which_one);
    pair<vector<vector<int>>, vector<pair<string, pair<int, int>>>> GlobalCalendar::ReturnColorings();
    void AddEventToCalendarFinal(const string& title, int time, int day, int priority, int intensity);

private:
    vector<vector<int>> Calendar;
    map<int, vector<pair<string, int>>> Events;
     vector<pair<string, pair<int, int>>> returner;

};
