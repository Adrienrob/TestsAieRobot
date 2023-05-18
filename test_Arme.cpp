#include "catch.hpp"
#include "Arme.hpp"
#include <SFML/Graphics.hpp>
#include "Projectile.hpp"

TEST_CASE("Test de la méthode estVide de Arme", "[Arme]") {

	Arme* a1 = new Arme("Mitrailleuse");
	
    REQUIRE(a1->estVide() == true);
    REQUIRE(a1->estVide() == false);
    
}

