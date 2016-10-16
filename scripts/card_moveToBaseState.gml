///card_moveToBaseState

var tx;
var ty = 238;

switch(index)
 {
     case 1:
         tx = 176;
         break;
     case 2:
         tx = 240;
         break;
     case 3:
         tx = 304;
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
