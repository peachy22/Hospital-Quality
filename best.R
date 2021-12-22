hdata <- read.csv("outcome-of-care-measures.csv", colClasses = "character")


best <- function(state,outcome){
 
  outcomes.states <- split(hdata, hdata$State)
  
  if (outcome == 'heart failure'){
    outcome <- 'Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure'
  }
  else if (outcome == 'heart attack'){
    outcome <- 'Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack'
  }
  else if (outcome == 'pneumonia'){
    outcome <- 'Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia'
  }
  else {
    stop('invalid outcome')
    }
  
  if (!state %in% c('AK', 'AL', 'AR', 'AS', 'AZ', 'CA', 'CO', 'CT', 'DC', 'DE', 'FL', 'GA', 'GU', 'HI', 'IA', 'ID', 'IL', 'IN', 'KS', 'KY', 'LA', 'MA', 'MD', 'ME', 'MI', 'MN', 'MO', 'MP', 'MS', 'MT', 'NC', 'ND', 'NE', 'NH', 'NJ', 'NM', 'NV', 'NY', 'OH', 'OK', 'OR', 'PA', 'PR', 'RI', 'SC', 'SD', 'TN', 'TX', 'UM', 'UT', 'VA', 'VI', 'VT', 'WA', 'WI', 'WV', 'WY')){
    stop('invalid state')
  }
  
  loc <- suppressWarnings(which.min(outcomes.states[[state]][[outcome]]))
  print(outcomes.states[[state]]$Hospital.Name[loc])
  
}


