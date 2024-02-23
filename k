# from os import cls 
# os.clear('cls')

class Produkty:
    def __init__(self, ktore_anime, cena):
        self.ka = ktore_anime
        self.cena = cena


    def przedstaw_sie(self):
        return f"- {self.ka} , kosztuje - {self.cena} zł."
   
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
        return super().przedstaw_sie() + f" {self.produkt}."


p = Produkty("he", 10)
m = Mangi("Smocze kule", 50, "Manga")
print(m.przedstaw_sie())
f = Figurki("Dragon balls", 69, "Figurka")
print(f.przedstaw_sie())
poduszka = Poduszki("balls Dragon", 96, "Poduszka")
print(poduszka.przedstaw_sie())
