
//Setting the strong numbers.
a[0] = 6;
a[1] = 4;
a[2] = 2;

for(var i = 0; i < 3; i++)
{
    strongNumbers[i] = a[i];
}

//Setting chance for the strong numbers
a[0] = .15;
a[1] = 0.2 + a[0];
a[2] = .4 + a[1];

for(var i = 0; i < 3; i++)
{
    strongChances[i] = a[i];
}



