/// scr_LoadDialogFromFile
// This dialog script expects all dialog to be placed in a specific dialog file.
// The dialog file must be in the "Included Files" folder.

// End dialog with these syntaxes for special features:
// * "/s" stops the dialog and promts the player to press a button to continue showing the next dialog
// * "/c" continues to the next dialog line and adds that line to the box as well.
// * "/e" ends the dialog chain. After the player presses a button to continue, the dialog
// window closes.
// * "/a" ends the dialog right away and continues from the next row.
// * "/axx" (xx is a number), creates a ms delay before continuing from the next row.
// * "/exx" (xx is a number), creates a ms delay before the dialog window closes automatically.

// These syntaxes can be used anywhere in the dialog for special features.
// They work just like HTML tags. Example [b]*dialog*[/b]:
// * "[xx][/xx]" (xx is a number), creates a ms delay before continuing with the next number.

// A dialog string should looks like this: [Unique dialogID]:::[Dialog][EndSyntax]>>>[Next dialogID]
// The ">>>[Next DialogID]" part can be omitted if the dialog chain ends with the current dialog
var file = "dialogEngine/dialog.txt";

// Get dialog from the text file
var dialogTextFile = file_text_open_read(file);

global.dialog = ds_map_create();

while(!file_text_eof(dialogTextFile))
{
    var textLine = file_text_readln(dialogTextFile);
    
    // map the unique dialogID as the key, and the rest as value
    ds_map_add(global.dialog, 
                string_extract(textLine, ":::", 0), 
                string_extract(textLine, ":::", 1));

}
file_text_close(dialogTextFile);

