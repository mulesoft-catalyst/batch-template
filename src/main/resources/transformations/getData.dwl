%dw 2.0

output application/csv header=true
---
readUrl("classpath://data/data.csv", "application/csv")