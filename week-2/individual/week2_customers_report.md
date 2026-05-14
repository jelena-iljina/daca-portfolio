# Week 2 Customers Cleaning Report

## Roll
Customer Data Cleaner (Roll B)

## Ülesanne
Kontrollida customers tabeli andmekvaliteeti ning leida:
- duplikaatsed e-mailid
- puuduvad ees- ja perekonnanimed
- ebajärjekindlad linnanimed
- puuduvad kontaktandmed

---

## Puhastusraport

| Kategooria | Leitud probleeme | Kirjeldus |
|---|---|---|
| Duplikaatsed e-mailid | 128 | Sama e-mail mitmel kliendil |
| NULL eesnimi | 0 | Puuduv kliendi eesnimi |
| NULL perenimi | 0 | Puuduv kliendi perenimi |
| Ebajärjekindlad linnanimed | 4–5 varianti (kokku 54) | Erinevad nimekujud samale linnale (nt tallinn vs Tallinn) |
| NULL telefon/e-mail | 0 / 380 | Puuduvad kontaktandmed |
| KOKKU probleeme | 562 | Andmekvaliteedi probleemid customers tabelis |

---

## Peamised tähelepanekud

- Suurimad probleemid on seotud kontaktandmete ja linnanimedega.
- Leiti 128 duplikaatset e-maili ning 380 kirjel puudub e-mail täielikult.
- Linnanimedes esineb erinevaid kirjapilte, mis võib raskendada analüüsi ja filtreerimist.

---

## Mõju ärile

Kõige rohkem mõjutab igapäevast tööd puuduvate e-mailide probleem, sest ilma kontaktandmeteta ei saa klientidega lihtsalt ühendust võtta ega saata pakkumisi, arveid või teavitusi. See mõjutab otseselt müüki, kliendisuhtlust ja turundust.

---

## Soovitused

- Standardiseerida linnanimed (nt kasutada ainult vormi “Tallinn”)
- Kontrollida uute klientide registreerimisel e-mailide unikaalsust
- Lisada valideerimine, et e-mail ei oleks tühi väli
- Rakendada automaatne andmekvaliteedi kontroll enne andmete salvestamist
