# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

uzytkowniks = Uzytkownik.create(
  [
    {
      index: '111111',
      imie: 'Sebastian',
      kod_pocztowy_u: '20-815',
      nazwisko: 'Kowalski',
      nr_budynku_u: '1a',
      nr_mieszkania_u: '1',
      ulica_u: 'Powstanców',
      password: '111111'
    },
    {
      index: '222222',
      imie: 'Jakub',
      kod_pocztowy_u: '30-915',
      nazwisko: 'Zaolzy',
      nr_budynku_u: '2f',
      nr_mieszkania_u: '4',
      ulica_u: 'Strzegomska',
      password: '222222'
    },
    {
      index: '333333',
      imie: 'Michał',
      kod_pocztowy_u: '20-400',
      nazwisko: 'Ruski',
      nr_budynku_u: '5',
      nr_mieszkania_u: '3',
      ulica_u: 'Grunwaldzka',
      password: '333333'
    }
  ]
)

restauracjas = Restauracja.create(
  [
    {
      id_restauracji: '1',
      kod_pocztowy_r: '20-212',
      nazwa_restauracji: 'Brandon',
      numer_budynku_r: '2',
      numer_lokalu_r: '23',
      opis_restauracji: 'Restauracja azjatycka',
      ulica_r: 'Jutrzenki'
    },
    {
      id_restauracji: '2',
      kod_pocztowy_r: '20-442',
      nazwa_restauracji: 'Polaris',
      numer_budynku_r: '11',
      numer_lokalu_r: '21',
      opis_restauracji: 'Restauracja polska',
      ulica_r: 'Komandorska'
    },
    {
      id_restauracji: '3',
      kod_pocztowy_r: '30-412',
      nazwa_restauracji: 'Kompas',
      numer_budynku_r: '5a',
      numer_lokalu_r: '3',
      opis_restauracji: 'Smażalnia ryb',
      ulica_r: 'Świdnicka'
    }
  ]
)
produkts = Produkt.create(
  [
    {
      id_produktu: '1',
      cena: '10',
      czas_przygotowania: '10',
      nazwa_produktu: 'Kurczak po chińsku',
      opis_produktu: 'Kurczak z ryżem w sosie słodko-kwaśnym',
      id_restauracji: '1'
    },
    {
      id_produktu: '2',
      cena: '20',
      czas_przygotowania: '15',
      nazwa_produktu: 'Makaron chiński',
      opis_produktu: 'Makaron z mięsem wieprzowym w sosie grzybowo sojowym',
      id_restauracji: '1'
    },
    {
      id_produktu: '3',
      cena: '8',
      czas_przygotowania: '10',
      nazwa_produktu: 'Pierogi z mięsem',
      opis_produktu: 'Pierogi z mięsem i skwarkami',
      id_restauracji: '2'
    },
    {
      id_produktu: '4',
      cena: '30',
      czas_przygotowania: '20',
      nazwa_produktu: 'Polski obiad',
      opis_produktu: 'Kotlet schabowy z ziemniakami i surówką',
      id_restauracji: '2'
    },
    {
      id_produktu: '5',
      cena: '20',
      czas_przygotowania: '20',
      nazwa_produktu: 'Dorsz',
      opis_produktu: 'Dorsz z frytkami i surówką',
      id_restauracji: '3'
    },
    {
    id_produktu: '6',
    cena: '15',
    czas_przygotowania: '25',
    nazwa_produktu: 'Danie dnia',
    opis_produktu: 'Mintaj w cieście naleśnikowym zapiekany w serze',
    id_restauracji: '3'
    }
  ]
)
