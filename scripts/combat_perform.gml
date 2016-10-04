///trick_perform(combat script, trick script(s))

var negate = false;
var i, j, arg;

for (i = 0; i < 5; i += 1;)
   {
   if argument_count > i
      {
      arg[i] = argument[i]
      }
   else
      {
      arg[i] = -1;
      }
   }
   
for(j = 1; j < argument_count; j++)
{
    
    if(!negate)
    {
        // a trick negated the combat script!
        negate = script_execute(arg[j]);
    }
    // a previous trick negated the combat script!
    else
    {
       
        script_execute(arg[j]);
    }
}
//combat script was negated
if(negate == true)
{
    exit;
}
//none of the tricks negated the combat script
else
{
    script_execute(arg[0]);
}
