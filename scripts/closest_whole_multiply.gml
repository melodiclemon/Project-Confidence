///closest_whole_multiply(number, multiplyer);
//
// Returns the closest whole number of a number that a multiplyer can
// become by multiplying itself
//
var output = round(argument0 / argument1);
if (output == 0 && argument0 > 0) output += 1;
output *= argument1;
return output;
