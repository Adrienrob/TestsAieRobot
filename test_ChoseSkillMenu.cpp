#include "catch.hpp"
#include "ChoseSkillMenu.hpp"
//#include "Screen.hpp"
TEST_CASE("Test ChoseSkillMenu", "[ChoseSkillMenu]")
{
    SECTION("Test construction et initialisation")
    {
        ChoseSkillMenu menu;
        REQUIRE(menu.skills_joueurA.size() == 3);
        REQUIRE(menu.skills_joueurB.size() == 3);
        REQUIRE(menu.getSkillA() == 0);
        REQUIRE(menu.getSkillB() == 0);
    }

    SECTION("Test ajout de bouton")
    {
        ChoseSkillMenu menu;
        menu.ajouterBouton();
        REQUIRE(menu.getVectorBoutons().size() == 7);
    }

}
