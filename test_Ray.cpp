#include "catch.hpp"
#include <SFML/Graphics.hpp>
#include "Ray.hpp"

TEST_CASE("Test du constructeur de Ray", "[Ray]") {

	Ray* ray = new Ray(10,25,6.25);
	
    REQUIRE(ray->getPosX() == 10);
    REQUIRE(ray->getPosY() == 10); // test failed
    REQUIRE(ray->getAngle() == 6.25);
    
}
