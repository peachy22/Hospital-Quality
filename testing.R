hdata <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
fail <- 'Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure'
pneu <- 'Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia'
att <- 'Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack'

outcomes <- subset(hdata, select = c('State','Provider.Number','Hospital.Name',fail,pneu,att))
#outcomes[, 4] <- as.numeric(outcomes[, 4])
#outcomes[, 5] <- as.numeric(outcomes[, 5])
#outcomes[, 6] <- as.numeric(outcomes[, 6])

outcomes.states <- split(outcomes, outcomes$State)



