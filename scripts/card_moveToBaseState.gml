///card_moveToBaseState

var tx;
var ty = 206;

switch(index)
 {
     case 1:
         tx = 96;
         break;
     case 2:
         tx = 160;
         break;
     case 3:
         tx = 224;
         break;
         
 }
 
//move 
if(round(x) != tx || round(y) != ty)
{
    x = smooth_approach(x,tx, 0.2);
    y = smooth_approach(y,ty,0.2); 
}
else
    state = card_idleState;
