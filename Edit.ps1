Function Add-BlockComment
{
    If ( $PSISE.CurrentFile.Editor.SelectedText.Length -gt 0 )
    {
        $Text = $PSISE.CurrentFile.Editor.SelectedText
        $Comment = "<#`n$Text`n#>"
        $PSISE.CurrentFile.Editor.InsertText($Comment)
    }
}


Function Remove-BlockComment
{
     If ( $PSISE.CurrentFile.Editor.SelectedText.Length -gt 0 )
    {
        $Text = $PSISE.CurrentFile.Editor.SelectedText
        If ( ( $Text.SubString(0,2) -eq '<#' ) -AND ( $Text.SubString($Text.Length - 2, 2) -eq '#>'  ) )
        {
            $PSISE.CurrentFile.Editor.InsertText($Text.SubString(2,$Text.Length - 4) )
        }
    }
}