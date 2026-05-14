# Andmekvaliteedi raport — enne ja pärast puhastamist

## Enne puhastamist
- Andmestik sisaldas 15 234 müügirida
- Leiti 1487 tuvastamata customer_id väärtust
- 592 klienti ei olnud teinud ühtegi ostu
- Linnanimedes esines 54 erinevat kirjapilti
- Tuvastati 12 korduvat tootenime

## Pärast puhastamist
- Andmestikku jäi 10 118 usaldusväärset rida
- Selgus, et osa customer_id väärtustest olid seotud anonüümse poe- ja online-müügiga
- Tuvastati 592 niinimetatud “vaimklienti”
- Linnanimed standardiseeriti 12 unikaalseks väärtuseks
- Korduvad tootenimed eemaldati

## Järeldus
Pärast puhastamist muutus andmestik oluliselt usaldusväärsemaks ning sobib edasiseks analüüsiks ja visualiseerimiseks. Suurim mõju oli kontaktandmete ja linnanimede standardiseerimisel.
