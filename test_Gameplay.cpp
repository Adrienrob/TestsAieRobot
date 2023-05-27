#include "catch.hpp"
#include "GamePlay.hpp"


TEST_CASE("GamePlay") {

    SECTION("Ajout_Ecran") {
        GamePlay game;
        Screen* screen = new WelcomeScreen();

        game.Ajout_Ecran("Welcome", screen);
        REQUIRE(game.getEcransDisponibles().size() == 1);
        REQUIRE(game.getEcransDisponibles()[0] == screen);
    }

    SECTION("CheckFenetreChanges") {
        GamePlay game;
        REQUIRE(game.CheckFenetreChanges()==0);
    }
}
