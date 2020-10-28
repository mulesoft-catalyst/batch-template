%dw 2.0
input payload application/csv quote = '"',escape = '"'
output application/json 
var data = payload[0]
---
 {

    provinceStateName: data.prefectureNameE,
    peoplePositiveCasesCt: data.testedPositive,
    peopleTotalTestedCt: data.peopleTested,
    peopleHospCumlCt: data.hospitalized,
    peopleInIntnsvCareCurrCt: data.serious,
    peopleDischargedCt: data.discharged,
    peopleDeathCt: data.deaths,
    infectionRateMeanNbr: data.effectiveReproductionNumber


}