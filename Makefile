#pour compiler : make
#pour nettoyer : make vclean


CPP=g++
LD=g++ -g
CPPFLAGS=-std=c++14
LDFLAGS=-std=c++14
LIBS=-lsfml-graphics -lsfml-window -lsfml-system -lsfml-network -lsfml-audio
EXES= tests

all: $(EXES)

tests: test_Bouton.o Bouton.o test_Arme.o Arme.o Projectile.o test_Ray.o Ray.o test_Masque.o Masque.o test_ChoseSkillMenu.o ChoseSkillMenu.o
	$(LD) $(LDFLAGS) test_Bouton.o Bouton.o test_Arme.o Arme.o Projectile.o test_Ray.o Ray.o test_Masque.o Masque.o test_ChoseSkillMenu.o ChoseSkillMenu.o -o $(EXES) $(LIBS)

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
	
clean:
	rm -f *.o

vclean: clean
	rm -f $(EXES)
