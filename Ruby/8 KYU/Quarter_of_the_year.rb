# Given a month as an integer from 1 to 12, return to which quarter of the year it belongs as an integer number.
# 
# For example: month 2 (February), is part of the first quarter; month 6 (June), is part of the second quarter; and month 11 (November), is part of the fourth quarter.

def quarter_of(month)
  case month
    when (1..3)
      return 1
    when (4..6)
      return 2
    when (7..9)
      return 3
    when (10..12)
      return 4
    end
end