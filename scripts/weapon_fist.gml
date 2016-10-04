
//Setting the strong numbers.
a[0] = 1;
a[1] = 1;
a[2] = 1;

for(var i = 0; i < 3; i++)
{
    strongNumbers[i] = a[i];
}

//Setting chance for the strong numbers
a[0] = .25;
a[1] = 0.25 + a[0];
a[2] = .5 + a[1];

for(var i = 0; i < 3; i++)
{
    strongChances[i] = a[i];
}



