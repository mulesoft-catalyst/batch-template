%dw 2.0
input payload application/json quote = '"',escape = '"'
output application/json
var data = payload
---
{
	countyName: data."Local Authority",
	reportDt: data."Specimen date",
	peoplePositiveNewCasesCt: data."Cases (new)",
	peoplePositiveCasesCt: data."Cumulative cases",
	peoplePositiveCasesRate: data."Cumulative incidence per 100,000 population",
	dailyTestedCt: data."Testing episodes (new)",
	peopleTotalTestedCt: data."Cumulative testing episodes"
}