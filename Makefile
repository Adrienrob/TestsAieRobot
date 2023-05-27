#pour compiler : make
#pour nettoyer : make vclean


CPP=g++
LD=g++ -g
CPPFLAGS=-std=c++14
LDFLAGS=-std=c++14
LIBS=-lsfml-graphics -lsfml-window -lsfml-system -lsfml-network -lsfml-audio
EXES= tests tests2

all: $(EXES)

tests: test_Bouton.o Bouton.o test_Arme.o Arme.o Projectile.o test_Ray.o Ray.o test_Masque.o Masque.o test_ChoseSkillMenu.o ChoseSkillMenu.o test_Drapeau.o Drapeau.o
	$(LD) $(LDFLAGS) test_Bouton.o Bouton.o test_Arme.o Arme.o Projectile.o test_Ray.o Ray.o test_Masque.o Masque.o test_ChoseSkillMenu.o ChoseSkillMenu.o test_Drapeau.o Drapeau.o -o tests $(LIBS)

tests2: test_TourEnnemi.o TourEnnemi.o test_Gameplay.o GamePlay.o test_Robot.o RobotPlayer.o test_Projectile.o Projectile.o
	$(LD) $(LDFLAGS) test_TourEnnemi.o TourEnnemi.o test_Gameplay.o GamePlay.o test_Robot.o RobotPlayer.o test_Projectile.o Projectile.o -o tests2 $(LIBS)
	
test_Gameplay.o: catch.hpp test_Gameplay.cpp
	$(CPP) $(CPPFLAGS) -c test_Gameplay.cpp
	
GamePlay.o: GamePlay.cpp GamePlay.hpp WelcomeScreen.hpp ChoseSkillMenu.hpp PlateauJeu.hpp GameOverScreen.hpp
	$(CPP) $(CPPFLAGS) -c GamePlay.cpp
	
test_TourEnnemi.o: catch.hpp test_TourEnnemi.cpp
	$(CPP) $(CPPFLAGS) -c test_TourEnnemi.cpp

TourEnnemi.o : TourEnnemi.cpp TourEnnemi.hpp EntiteAffichable.hpp
	$(CPP) $(CPPFLAGS) -c TourEnnemi.cpp
	
test_Robot.o: catch.hpp test_Robot.cpp
	$(CPP) $(CPPFLAGS) -c test_Robot.cpp

RobotPlayer.o : RobotPlayer.cpp RobotPlayer.hpp Arme.hpp Ray.hpp EntiteAffichable.hpp
	$(CPP) $(CPPFLAGS) -c RobotPlayer.cpp
	
test_Projectile.o: catch.hpp test_Projectile.cpp
	$(CPP) $(CPPFLAGS) -c test_Projectile.cpp

test_Bouton.o: catch.hpp test_Bouton.cpp
	$(CPP) $(CPPFLAGS) -c test_Bouton.cpp
	
Bouton.o: Bouton.hpp
	$(CPP) $(CPPFLAGS) -c Bouton.cpp
	
test_Arme.o: catch.hpp test_Arme.cpp
	$(CPP) $(CPPFLAGS) -c test_Arme.cpp
	
Arme.o: Arme.cpp Arme.hpp Projectile.hpp
	$(CPP) $(CPPFLAGS) -c Arme.cpp
	
Projectile.o: Projectile.cpp Projectile.hpp
	$(CPP) $(CPPFLAGS) -c Projectile.cpp
	
test_Ray.o: catch.hpp test_Ray.cpp
	$(CPP) $(CPPFLAGS) -c test_Ray.cpp
	
Ray.o: Ray.hpp
	$(CPP) $(CPPFLAGS) -c Ray.cpp
	
test_Masque.o: catch.hpp test_Masque.cpp
	$(CPP) $(CPPFLAGS) -c test_Masque.cpp
	
Masque.o: Masque.hpp
	$(CPP) $(CPPFLAGS) -c Masque.cpp
	
test_ChoseSkillMenu.o: catch.hpp test_ChoseSkillMenu.cpp
	$(CPP) $(CPPFLAGS) -c test_ChoseSkillMenu.cpp
	
ChoseSkillMenu.o : ChoseSkillMenu.cpp ChoseSkillMenu.hpp Bouton.hpp 
	$(CPP) $(CPPFLAGS) -c ChoseSkillMenu.cpp

test_Drapeau.o: catch.hpp test_Drapeau.cpp
	$(CPP) $(CPPFLAGS) -c test_Drapeau.cpp

Drapeau.o : Drapeau.cpp Drapeau.hpp EntiteAffichable.hpp
	$(CPP) $(CPPFLAGS) -c Drapeau.cpp
	
clean:
	rm -f *.o

vclean: clean
	rm -f $(EXES)
