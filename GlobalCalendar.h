#include <string>
#include <vector>
#include <map>
#include <utility> 
#include <pair>

using namespace std;

class GlobalCalendar {
public:
    GlobalCalendar(const vector<vector<int>>& calendar);

    void AddEvent(const string& title, const string& query, int priority, int intensity);
    void RemoveEvent(string title, int priority, int which_one);
    pair<vector<vector<int>>, vector<pair<string, vector<int>>>> GlobalCalendar::ReturnColorings();
    void AddEventToCalendarFinal(const string& title, int time, int day, int priority, int intensity);

private:
    vector<vector<int>> Calendar; // 7 x 24 calendar
    map<int, vector<pair<string, int>>> Events; // map mapping integer count to a vector of events (first = event, second = intensity)
     vector<pair<string, vector<int>>> returner; // vector of returned events (string event, vector of (day, time, intensity))

};

string execPythonScript(const string& jsonInput);
