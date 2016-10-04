///roundUp(x)

// Rounds a value up if the decimal is equal to or higher than 0.5.
// Otherwise it will round the value down and return it.


var a = argument0;

if(frac(a) >= 0.5)
{
    return ceil(a);
}
else
    return floor(a);
