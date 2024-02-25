#include "crow_all.h"
#include <cstdlib>
#include <iostream>
#include <string>

int main() {
    crow::SimpleApp app;

    CROW_ROUTE(app, "/submit-queries").methods("POST"_method)
    ([&](const crow::request& req) {
        // Log the incoming request body
        CROW_LOG_INFO << "Received request with body: " << req.body;

        auto x = crow::json::load(req.body);
        if (!x) {
            CROW_LOG_INFO << "Invalid JSON received";
            return crow::response(400, "Invalid JSON");
        }

        std::map<std::string, std::pair<int, int>> queryResults;

        for (const auto& item : x) {
            std::string query_title = item.s();
            size_t colonPos = query_title.find(':');
            if (colonPos != std::string::npos) {
                std::string query = query_title.substr(0, colonPos);

                // Prepare the command for calling the Python script
                std::string command = "python3 /Users/agilan/Desktop/PlannerAI/script.py \"" + query + "\"";
                std::array<char, 128> buffer;
                std::string result;
                std::unique_ptr<FILE, decltype(&pclose)> pipe(popen(command.c_str(), "r"), pclose);
                if (!pipe) {
                    CROW_LOG_ERROR << "Failed to execute command: " << command;
                    throw std::runtime_error("popen() failed!");
                }
                while (fgets(buffer.data(), buffer.size(), pipe.get()) != nullptr) {
                    result += buffer.data();
                }
                // Parse the result and store it
                int priority = std::stoi(result.substr(0, result.find(',')));
                int intensity = std::stoi(result.substr(result.find(',') + 1));

                // Log each query result
                CROW_LOG_INFO << "Query: " << query << ", Priority: " << priority << ", Intensity: " << intensity;

                queryResults[query] = std::make_pair(priority, intensity);
            }
        }

        crow::json::wvalue dto;
        for (const auto& [query, pi] : queryResults) {
            dto[query] = {{"priority", pi.first}, {"intensity", pi.second}};
        }

        // Log the final response
        

        return crow::response{dto};
    });

    app.port(18080).multithreaded().run();
}
