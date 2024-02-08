# Zrob class(ę) Employee która ma dwie początkowe zmienne ilosc pracowników oraz podwyżkę(liczbę np. 1.04 co oznacza 4%).
# Stwóż construktor który będzie przyjmował Imię i Nazwiko, płacę.
# Zrób tak, żeby wiadomo było ilu jest pracowników.
# Zrób taką funkcję która połączy imie i nazwiko.
# Zrób taką funkcję która powie ile wynosi nasz przychów/płaca po podwyżce.
# Zrób taką funkcję która zmieni podwyżkę używając @classmethod .
# Zrób taką funkcję która przyjmuje stringa z Imieniem-Nazwiskiem-Przychodem używając funkcji split() rozdiel stringa na 3 rożne zrób to używając @classmethod .
# Zrób taką funkcję która przyjmuję argumęt - dzień (data) i sprawdza czy dzień dzisiejszy jest dniem w którym trzeba iść do szkoły/pracy czy nie zrób, żeby zwracała True lub False,
# użyj funkcji weekday() which returns an integer from 0 (Monday) to 6 (Sunday). If it is Friday (weekday 4) napisz funkcję jako statyczną, (używając @staticmethod)
class Employee:

    num_of_emps = 0
    raise_amt = 1.04

    def __init__(self, first, last, pay):
        self.first = first
        self.last = last
        self.email = first + '.' + last + '@email.com'
        self.pay = pay

        Employee.num_of_emps += 1

    def fullname(self):
        return '{} {}'.format(self.first, self.last)

    def apply_raise(self):
        self.pay = int(self.pay * self.raise_amt)

    @classmethod
    def set_raise_amt(cls, amount):
        cls.raise_amt = amount

    @classmethod
    def from_string(cls, emp_str):
        first, last, pay = emp_str.split('-')
        return cls(first, last, pay)

    @staticmethod
    def is_workday(day):
        if day.weekday() == 5 or day.weekday() == 6:
            return False
        return True


emp_1 = Employee('Corey', 'Schafer', 50000)
emp_2 = Employee('Test', 'Employee', 60000)

Employee.set_raise_amt(1.05)

print(Employee.raise_amt)
print(emp_1.raise_amt)
print(emp_2.raise_amt)

emp_str_1 = 'John-Doe-70000'
emp_str_2 = 'Steve-Smith-30000'
emp_str_3 = 'Jane-Doe-90000'

first, last, pay = emp_str_1.split('-')

#new_emp_1 = Employee(first, last, pay)
new_emp_1 = Employee.from_string(emp_str_1)

print(new_emp_1.email)
print(new_emp_1.pay)

import datetime
my_date = datetime.date(2024, 2, 8)

print(Employee.is_workday(my_date))