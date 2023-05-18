#define CATCH_CONFIG_MAIN  // This tells Catch to provide a main() - only do this in one cpp file
#include "catch.hpp"
#include "Bouton.hpp"
#include <SFML/Graphics.hpp>


TEST_CASE("Test du constructeur de Bouton (et getters)", "[Bouton]") {

	Bouton* b1 = new Bouton(900, 900, 200, 100, "Play",  sf::Color(20,20,100,200),false);
	Bouton* b2 = new Bouton(1300, 900, 200, 100, "Quit",  sf::Color(100,20,20,200),false);
	
    REQUIRE(b1->getPosX() == 900);
    REQUIRE(b1->getPosY() == 900);
    REQUIRE(b2->getPosX() == 1300);
    REQUIRE(b2->getPosY() == 950); // test failed
    
    
}

