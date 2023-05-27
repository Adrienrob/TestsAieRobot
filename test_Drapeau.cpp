#include "catch.hpp"
#include "Drapeau.hpp"
TEST_CASE("Test Drapeau", "[Drapeau]")
{
    SECTION("Test construction et initialisation")
    {
        Drapeau drapeau("DrapeauA");
        REQUIRE(drapeau.getCollected() == false);
        REQUIRE(drapeau.getNom() == "Proprietaire"); //test failed
        // Ajoutez ici d'autres tests pour vérifier l'initialisation correcte des membres de la classe
    }

    SECTION("Test UpdateEvent")
    {
        Drapeau drapeau("Proprietaire");
        std::array<std::array<int, 15>, 15> maze;
        int result = drapeau.UpdateEvent("Player", &maze);
        REQUIRE(result == 0);
    }

}
