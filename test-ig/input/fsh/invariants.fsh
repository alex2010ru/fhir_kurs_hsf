Invariant: edu-pat1
Description: "personnummer med 12 siffror"
Expression: "identifier
  .where(system = $personnummer)
  .all(value.matches('^[0-9]{12}$'))"
Severity: #error
