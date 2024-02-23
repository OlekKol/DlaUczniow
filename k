
# from os import cls 
# os.clear('cls')

class Produkty:
    
    def __init__(self, ktore_anime, cena):
        
        self.ka = ktore_anime
        self.cena = cena


    def przedstaw_sie(self):
        return f"- {self.ka} , kosztuje - {self.cena} zł."
    def przedsaw_rozmiary(self, procent):
        procent += 100
        return f"Zwykła(wieklkość) - {self.ka} , kosztuje - {self.cena} zł, Średnia(wieklkość) - {self.ka} , kosztuje - {(self.cena) * procent/100} zł, Giga(wieklkość) - {self.ka} , kosztuje - {(self.cena) *( 2 * (procent/100))} zł"      
   
class Mangi(Produkty):
    def __init__(self, ka, cena, produkt):
        super().__init__(ka, cena)
        self.produkt = produkt


    def przedstaw_sie(self):
        return super().przedstaw_sie() + f" {self.produkt}."
   


class Figurki(Produkty):
    def __init__(self, ka, cena, produkt):
        super().__init__(ka, cena)
        self.produkt = produkt


    def przedstaw_sie(self):
        return super().przedstaw_sie() + f" {self.produkt}."
    
class Poduszki(Produkty):
    def __init__(self, ka, cena, produkt):
        super().__init__(ka, cena)
        self.produkt = produkt


    def przedstaw_sie(self):
        return super().przedsaw_rozmiary(100) + f" {self.produkt}."

class Gry(Produkty):
    def __init__(self, ka, cena, produkt):
        super().__init__(ka, cena)
        self.produkt = produkt
        
        
    def przedstaw_sie(self, Wiek_ludzia, Wymagany_wiek):
        if Wiek_ludzia >= Wymagany_wiek:
            return super().przedstaw_sie() + f" {self.produkt}."
        else:
            print("Ta gra może nie być dla ciebie... Spróbuj coś innego.")





produkt = Produkty("", 0)
m = Mangi("Smocze kule", 50, "Manga")
print(m.przedstaw_sie())
f = Figurki("Dragon balls", 69, "Figurka")
print(f.przedstaw_sie())
p = Poduszki("balls Dragon", 96, "Poduszka")
print(p.przedstaw_sie())
g = Gry("nogarD balls", 60, "Gra")
print(g.przedstaw_sie(17, 18))

