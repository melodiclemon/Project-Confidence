/// string_extract(str,sep,index)
//
//  Returns the element at the given index within a string of elements.
//
//  eg. string_extract("cat,dog,mouse", "," ,1) == "dog"
//
//      str         elements, string
//      sep         element separator, string
//      index       element to return, [0..N-1], real
//
//  edits made by Daniel "Jollepoker" Vedin, to remove unintended behaviour.
//
/// GMLscripts.com/license
{
    var str,sep,ind,len,curind;
    str = argument0;
    sep = argument1;
    ind = argument2;
    len = string_length(sep)-1;
    curind = 0;
    if (string_pos(sep,str) != 0)
    {
        repeat (ind)
        { 
            curind++;
            str = string_delete(str,1,string_pos(sep,str)+len);
            if (string_pos(sep,str) == 0)
            {
                if (curind != ind) 
                {
                    return "";
                }
            }
        }
        str = string_delete(str,string_pos(sep,str),string_length(str));
        return str;
    }
    else
    {
        return str;
    }
}
