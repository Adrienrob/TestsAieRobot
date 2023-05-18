#include "catch.hpp"
#include <SFML/Graphics.hpp>
#include "Masque.hpp"

TEST_CASE("Test du constructeur de Masque", "[Masque]")
{
    Masque masque(10.0f, 15.0f, 100, 100, 200, 200);
    
    REQUIRE(masque.getPlayer1().getRadius() == 10.0f);
    REQUIRE(masque.getPlayer2().getRadius() == 15.0f);
    REQUIRE(masque.getPlayer1().getPosition() == sf::Vector2f(100.0f, 100.0f));
    REQUIRE(masque.getPlayer2().getPosition() == sf::Vector2f(200.0f, 200.0f));
}
