#include "catch.hpp"
#include "RobotPlayer.hpp"

TEST_CASE("RobotPlayer Tests") {
    SECTION("Constructeur") {
        RobotPlayer robot(0, 0, 10, 10, "Robot1");
        REQUIRE(robot.getJaugeVie() == 100);
        REQUIRE(robot.getNbMunitions() == 10);
        REQUIRE(robot.getNbPixelsDeplacement() == 15);
    }
}
