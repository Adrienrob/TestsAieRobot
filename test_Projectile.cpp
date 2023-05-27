#include "catch.hpp"
#include "Projectile.hpp"
#include <SFML/Graphics.hpp>


TEST_CASE("Projectile Constructeur", "[Projectile]") {
    Projectile projectile(10, 20, 45.0f);
    
    SECTION("Vérification position initiale") {
        REQUIRE(projectile.getPosX() == 10);
        REQUIRE(projectile.getPosY() == 20);
    }
    
    SECTION("Vérification angle") {
        REQUIRE(projectile.getAngleShot() == 45.0f);
    }
}

TEST_CASE("Projectile Shoot", "[Projectile]") {
    sf::RenderWindow window;
    int taille_case = 50;
    
    
    SECTION("Vérifie que le projectile n'aille pas en dehors d'un cadre") {
        Projectile projectile(0, 0, 60.0f);
        
        int result = projectile.Shot(&window, taille_case);
        
        REQUIRE(result == -1);
    }
}
