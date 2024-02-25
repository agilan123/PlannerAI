#include "crow_all.h"

int main() {
    crow::SimpleApp app;

    CROW_ROUTE(app, "/submit-queries").methods("POST"_method)
    ([](const crow::request& req) {
        auto x = crow::json::load(req.body);
        if (!x)
            return crow::response(400);
        std::cout << x << std::endl; // Do something with the data
        return crow::response(200, "Queries received successfully!");
    });

    app.port(18080).multithreaded().run();
}