$image = @'
iVBORw0KGgoAAAANSUhEUgAAAJIAAAAiCAYAAAC0sYD7AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAt1SURBVHhe7ZpXTF3ZFYaREktJnqIkiiZSpCgTRXmLlDyNEs0oI82MNIomGuUhShTFuOPewTbuveJesDHghnvBBWzcu41xw4C7MW4YTLkGTDEGVs63OJs5XN97Odf2A3c4v7RkvPte699rrb3PjRIPHj4AlEgtvjJpfnhLmh/dcS9Ft6WpuMjqLFLV8FRKqnOltCbftdC+sq5QF+Eh8qFEakidJVVf/VKq//l711Lz91+Lb9BX0vRaZFf+/2TcwSiZeuQHriXeap+a8zddhIfIRyuRkqdJ1ec/lepvfuNaaizi+WI+VyLtyPu3xGZEycQs9xJntU/O/qsuwkPko5VIKTOk6oufS/W3H7uWmq9/Jb4BXyiRdub/V8ZkRsnkw+5lrNU+5dJnuggPkQ+PSB4+CDwieWiHpqYmyc/Pl/Pnz8uFCxfk2bNndk1odHoisbGXL1+Kz+dTqayslDdv3ti1HaO2tlb7mP6vXr2ya6wLZ0uL3LhxQ06dOiXV1dV2addFYWGhLFy4UIYOHSoDBgyQnj17yrZt2+za0Oj0RHr+/LlMmTJFxo0bJxMmTJDY2FhJS0uza0Ojvr5eFi1aJGPGjNG+o0ePlk2bNtm1ImfPnpX+/ftL7969Zfny5fL6tbWZLgr0HB8frwSCSEi/fv1c67rTE+np06dKgMGDB8uwYcP0X4hRUVFhtwiO3NxcGTRokCqFvjExMbJ27Vq7VlRJkIgxmQPP1VWxceNG1Q96mj17tly7dk3y8vLk/v376rmrqqokOztbsrKy7B7t0emJRIyGOMOHD5dRo0apQI5jx47ZLYID0tDW2S8lJcWuFc0Fxo4dq0TbsWOHhtGuiMbGRiUPBwrJycmxa1px8+ZNGT9+vHqouXPn2qXtEVFEGjlypAqbXbx4cUjDl5SUaDjkhNEnEJFAeXm5PH782P5f1wR547Rp01Q/cXFxGuacuHTpkoa8gQMHypIlS+zS9ogYIuE1Jk+eLFOnTtW/R4wYIQ8ePLBbvY39+/erq8bjJCQkKJlQhD+R3IJQ+ujRIw21dXV1dmlo+Cf3TpDcszfG4zLhBoz15MkTJb6bPoQjxmeeUJcJLiTTp09XIqFrfyJdvXpVhgwZovVLly61S9sjYojEJiDEnj171CNBCsJRIKCYmTNnaiJNEr1v3z5VhD+RCG0k4wsWLNBx/UHyfeLECfV+EydO1DyKEztjxgy9zRhCHT58WNfGOOQRGJt5SfApN0Yk18AoiYmJ6gHYF+NxmVixYoVcvnxZ2/kDEm/ZskX7cNlgHZMmTdLQzV6daG5u1jUwHoeO8ZmHv5OSkjTvMUC3y5Yt0/3RhsPJ2KyZ/uxh5cqVMmfOHD2I1JOQU45nWrduXZsOHET6mUWQ37qWmq8/+gBE+lQXEQpOIs2bN0+TP+I1/0ex/ooEJNkQByJxMzt58qS29yfSuXPnpG/fvtKrVy9VphMYH4UZl85YeDiEBJ2QWVxcrG3Xr1+vZdStWrVKTzf/79OnjxqesTAwyb05BGYshLEpY407d+7UtgZ4B/ZJG9Zi1sOaCdd4PYOGhgZJTU3Veto55zB90QsHC9y7d0+v+KzTkIgxaW/Wz7/0ow4hxaC8e/fubXsDrURKnCBVn/xQqr/8hWup+fQnUhn9iRJpS+63MnRflJLJrQy32ide+LMuIhScRMIT8IbEDYPNYRQezfyxevVqVTynh40ePXo0IJEuXrzY5qk4eQbkXoyBQlEcgktPT0/XkAnByL8IG2Dz5s06PkbAIPxN8sqbDKeZNWRkZLSNBwnxBLt375Zdu3apB2Ad1LFu50UCktKPPni806dP6+HAGzCH8/a6devWtrasA6+Cp8VzkySbOdgvCTW3VLwj7ZweCW+zZs0arcOLzZ8/X+sQDjG6oQ8Ho51Hktyz0rIlQWTXcvey3Up2s9Kkxcp3b5ZlytH7c+RkYYJrof214o4fu5xE4qRzWgsKCjRPMgQgZBgQVjgpGCQ5OVnLDh48GBaRUDLtjdHxaE4vAe7cudPmDZxEgtwQjjcsCEmbu3fvqoEYi3VzhXauGU/C4aAv9YTEmpoarZs1a5aWs07GcQISMQ9gPfRlzQiPrM458Nzs3Yzl9ObkXs4cyXhagytXrmgf6kMm26WNIgUWsW6HITctKbT2wFJb6qqk+WWJNFe9cC+0f/WdWw4GfyKhdAzEaaQMAxnPAPbu3askYuOEOJCZmalt3RAJ5fM37RFI0hEMkRgLL+RPOuY3YYWcLBAgDpcJyICxeXEHEIl+COMEA56NOVgH4TUQSktLVZcQGrl165aWQ6hQybZrIsVdqZVuqeXyo7QK19JtQ4X8Mb1c6qzQ1pwXLU0Z3SwP9WP3QvvsL5WIoeBPJHOKjHEggVGwUQjlGMDZlv5uiIQHwX1jUBLMhw8fankoGCIxr8k/nMCwZv5Q71+sjTaMQ9gDhDbeb1gLnoawQlLufPrgbwjKHMiZM2fsmrdBSIKozHHkyBEtg8ROIqFzJ5jPFZGG5tRJVHKlRG30uZd1Pvnd7golktz4l8gBa6hDYYjVvuXiX96ZSLwTcbVH8eQh4Pr169oOj3To0CEtA+EQCe/GTYdyQgzvTB3BSSRyKCcwMjmGMQRvMsHATZAxWA+hDuBFOBTsCXIzBkSAOFw8AHmKCYF4GuOJA4G8hvEZx3xH8w9t70ykEZctIqVYRNpkEcStrPfJH/bYRMr7j0iGNVRWGGK1b8n+7J2JBDZs2KCKN8ojJ0Lh/sp4VyLhmcIlEqHVCcIcSbIxBFfzYOCKz1oYxxlSSdbJu3iCoJ798i/7ZL0m1EMkyMaBCgZ0Rl/ErPWDeaRIJRLvQGwQxXIrwfAYwT9HCIdIEAdPx5iIySNCIRSRAOHIzH/gwAG79G04czPer/zBLYs3K4hOqOOGZrwKBjZ9uaUGgvGOEI525lNIOEQK+SAZqUQi8SasGTKRQ/A3yaET4RAJZRujoHBI6Z88G5jyjoiE8U1o4mHQ3Mic4Ccc5mbHNZvbZzAwHmtmTnNoyM3MHByqQL9k4FCgI9pARtID0BGRIBy6QIJdFiyLRi6RAAkjBuTqjYICtQmHSIA8hjIMSj3hAMNiHK7b5Ca82ZjbTUdEMrcl1sd4eCg+c/CxlMPAtd6880AG3m4gKXXbt2/XsG3ea3hHgzQYlflIxkFRUZHqACIyDvsk7DEHa4ZEvPazBjwZOZh5HuiISHh++kFCCEjoZNyysjL9F1gWjWwivXjxou3jLIoNdGsKl0gomN8tmcc9jMYayENIalEo5UbhHREJ8JBIG+ZjPAyCN2U8CEA5/fn0AfEAxCUvoh8kYI3kW3gu2lNungmAOVSGsKwZgjIHoZAyiMpYzp/MdEQkdM5nHNbN4eKdjsdhvjS0e9nuzETCE6AYnvLJgQJ9BCXJ5smedpxMf2Bc+vfo0UNfaw14IeYTAOX+LhtvwBUcI6N8hGs4n1Tow1o4kYBXZsaPjo7WTxzBwCMh/RgLkjKeEYxESHU+BnLaMTqfQ5jXCO0h0/Hjx+2W3wEycbACzQGRIKMhqgFkYF3sAR0GCqusHaIxLmRlr+SSJkxbFu3cRGKhvIvw/oIHMa7UCU4QeQNJYSDwFkR/BDdtQGjCGJQHuzJDTJ4SCG+QEO9De34JYEIDYYMyklxzJQ8GknleyglZhDg8JAk4PyQLlIvxPYxxudExP56Sl/FQP30h9yFZJxFnDojOJxrnB1sn0Cm6ZQ/o2pDDH/Q362Yd9DE/e7Ys2rmJ5CEyYFnUI5KH94dlUY9IHt4flkU9Inl4f1gWFYnJrpWoVRWtZHIrSZXy0fZyqYVI1/8hkm4Nxfc2t2K1bzn3J49I3xNYFhXJfNooo6/USfz1etcSd7VeFhXUSiMfoUu2ityOFbkb716s9i1PkjwifU+gRPLg4f0g8n99+NhKa3uYYAAAAABJRU5ErkJggg==
'@

$inputXML = @"
<Window x:Class="UserAccountCreationGUI.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:UserAccountCreationGUI"
        mc:Ignorable="d"
        Title="UserAcctCreationGUI" Height="523" Width="1063">
    <Grid HorizontalAlignment="Center" Width="1062">
        <Image x:Name="branding" HorizontalAlignment="Left" Height="93" Margin="10,0,0,0" VerticalAlignment="Top" Width="67" Source="/Branding.png"/>
        <TextBlock x:Name="description" HorizontalAlignment="Left" Height="45" Margin="91,18,0,0" Text="The User Account Creation Tool is used to create accounts." TextWrapping="Wrap" VerticalAlignment="Top" Width="336"/>
        <Button x:Name="create" HorizontalAlignment="Left" Height="41" Margin="912,425,0,0" VerticalAlignment="Top" Width="117" Content="Create User"/>
        <Button x:Name="exit" Content="Exit" HorizontalAlignment="Left" Height="41" Margin="29,425,0,0" VerticalAlignment="Top" Width="117"/>
        <TextBox x:Name="first" HorizontalAlignment="Left" Margin="29,104,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="264"/>
        <Label Content="First Name (ie. Cody)" HorizontalAlignment="Left" Margin="298,99,0,0" VerticalAlignment="Top" Height="28"/>
        <TextBox x:Name="middle" HorizontalAlignment="Left" Margin="29,137,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="264" />
        <Label Content="Middle Initial (ie. A)" HorizontalAlignment="Left" Margin="298,132,0,0" VerticalAlignment="Top" Height="28"/>
        <TextBox x:Name="last" HorizontalAlignment="Left" Margin="29,168,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="264" />
        <Label Content="Last Name (ie. Aldrich)" HorizontalAlignment="Left" Margin="298,163,0,0" VerticalAlignment="Top" Height="28"/>
        <TextBox x:Name="cn" HorizontalAlignment="Left" Margin="29,196,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="264" />
        <Label Content="Valid CN (ie. cody.a.aldrich2.ctr)" HorizontalAlignment="Left" Margin="298,191,0,0" VerticalAlignment="Top" Height="28"/>
        <TextBox x:Name="email" HorizontalAlignment="Left" Margin="29,228,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="264" />
        <Label Content="Email (ie. cody.a.aldrich2.ctr@contoso.com)" HorizontalAlignment="Left" Margin="298,223,0,0" VerticalAlignment="Top" Height="28"/>
        <Label Content="Acct Exp Date (MM/DD/YYYY)" HorizontalAlignment="Left" Margin="298,256,0,0" VerticalAlignment="Top" Height="28"/>
        <DatePicker x:Name="deros" HorizontalAlignment="Left" Margin="29,256,0,0" VerticalAlignment="Top" Width="264"/>
        <TextBox x:Name="displayname" HorizontalAlignment="Left" Margin="29,289,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="264" />
        <Label Content="Display Name (Aldrich, Cody, A.)" HorizontalAlignment="Left" Margin="298,284,0,0" VerticalAlignment="Top" Height="28"/>
        <TextBox x:Name="uid" HorizontalAlignment="Left" Margin="28,317,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="265" />
        <Label Content="uid (1938274392) " HorizontalAlignment="Left" Margin="297,312,0,0" VerticalAlignment="Top" Height="28" />
        <ComboBox x:Name="accttype" HorizontalAlignment="Left" Height="23" Margin="687,85,0,0" VerticalAlignment="Top" Width="172" >
            <ListBoxItem Content="ADM"/>
            <ListBoxItem Content="OA"/>
            <ListBoxItem Content="WA"/>
            <ListBoxItem Content="DA"/>
        </ComboBox>
        <Label Content="Account Type (ie. ADM)" HorizontalAlignment="Left" Margin="869,80,0,0" VerticalAlignment="Top" Height="28"/>
        <ComboBox x:Name="org" HorizontalAlignment="Left" Height="23" Margin="687,118,0,0" VerticalAlignment="Top" Width="172">
            <ListBoxItem Content="Org1"/>
            <ListBoxItem Content="Org2"/>
            <ListBoxItem Content="Org3"/>
            <ListBoxItem Content="Org4"/>
            <ListBoxItem Content="Org5"/>
            <ListBoxItem Content="Org6"/>
            <ListBoxItem Content="Org7"/>
            <ListBoxItem Content="Org8"/>
        </ComboBox>
        <Label Content="Organization (ie. Org1)" HorizontalAlignment="Left" Margin="869,113,0,0" VerticalAlignment="Top" Height="28" Width="171"/>
        <Label Content="Rank (ie. CTR)" HorizontalAlignment="Left" Margin="869,144,0,0" VerticalAlignment="Top" Height="28" Width="160"/>
        <ComboBox x:Name="rank" HorizontalAlignment="Left" Height="22" Margin="687,147,0,0" VerticalAlignment="Top" Width="172">
            <ListBoxItem Content="ADM"/>
            <ListBoxItem Content="OA"/>
            <ListBoxItem Content="WA"/>
            <ListBoxItem Content="PV1"/>
            <ListBoxItem Content="PV2"/>
            <ListBoxItem Content="PFC"/>
            <ListBoxItem Content="SPC"/>
            <ListBoxItem Content="CPL"/>
            <ListBoxItem Content="SGT"/>
            <ListBoxItem Content="SSG"/>
            <ListBoxItem Content="SFC"/>
            <ListBoxItem Content="MSG"/>
            <ListBoxItem Content="1SG"/>
            <ListBoxItem Content="SGM"/>
            <ListBoxItem Content="CSM"/>
            <ListBoxItem Content="SMA"/>
            <ListBoxItem Content="2LT"/>
            <ListBoxItem Content="1LT"/>
            <ListBoxItem Content="CPT"/>
            <ListBoxItem Content="MAJ"/>
            <ListBoxItem Content="LTC"/>
            <ListBoxItem Content="COL"/>
            <ListBoxItem Content="BG"/>
            <ListBoxItem Content="MG"/>
            <ListBoxItem Content="LTG"/>
            <ListBoxItem Content="GEN"/>
        </ComboBox>
        <ListBox x:Name="secgroups" HorizontalAlignment="Left" Height="116" Margin="687,178,0,0" VerticalAlignment="Top" Width="172" SelectionMode="Multiple">
            <ListBoxItem Content="Security Group 1"/>
            <ListBoxItem Content="Security Group 2"/>
            <ListBoxItem Content="Security Group 3"/>
            <ListBoxItem Content="Security Group 4"/>
            <ListBoxItem Content="Security Group 5"/>
            <ListBoxItem Content="Security Group 6"/>
            <ListBoxItem Content="Security Group 7"/>
        </ListBox>
        <Label Content="Add to Security Groups" HorizontalAlignment="Left" Margin="869,178,0,0" VerticalAlignment="Top" Height="28" Width="160"/>
        <Button x:Name="help" Content="Help" HorizontalAlignment="Left" Height="41" Margin="773,425,0,0" VerticalAlignment="Top" Width="117"/>
    </Grid>
</Window>

"@        

$inputXML = $inputXML -replace 'mc:Ignorable="d"','' -replace "x:N",'N' -replace '^<Win.*', '<Window'

[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')

[xml]$XAML = $inputXML

#Read XAML

 

$reader=(New-Object System.Xml.XmlNodeReader $xaml)

try{

    $Form=[Windows.Markup.XamlReader]::Load( $reader )

}

catch{

    Write-Warning "Unable to parse XML, with error: $($Error[0])`n Ensure that there are NO SelectionChanged or TextChanged properties in your textboxes (PowerShell cannot process them)"

    throw

}

#===========================================================================
# Store Form Objects In PowerShell
#===========================================================================
#Load required libraries 
Add-Type -AssemblyName PresentationFramework, PresentationCore, WindowsBase, System.Windows.Forms, System.Drawing

function DecodeBase64Image {
    param (
        [Parameter(Mandatory=$true)]
        [String]$ImageBase64
    )
    # Parameter help description
    $ObjBitmapImage = New-Object System.Windows.Media.Imaging.BitmapImage #Provides a specialized BitmapSource that is optimized for loading images using Extensible Application Markup Language (XAML).
    $ObjBitmapImage.BeginInit() #Signals the start of the BitmapImage initialization.
    $ObjBitmapImage.StreamSource = [System.IO.MemoryStream][System.Convert]::FromBase64String($ImageBase64) #Creates a stream whose backing store is memory.
    $ObjBitmapImage.EndInit() #Signals the end of the BitmapImage initialization.
    $ObjBitmapImage.Freeze() #Makes the current object unmodifiable and sets its IsFrozen property to true.
    $ObjBitmapImage
}


$xaml.SelectNodes("//*[@Name]") | %{"trying item $($_.Name)";

    try {Set-Variable -Name "WPF$($_.Name)" -Value $Form.FindName($_.Name) -ErrorAction Stop}

    catch{throw}

    }

 

Function Get-FormVariables{

if ($global:ReadmeDisplay -ne $true){Write-host "If you need to reference this display again, run Get-FormVariables" -ForegroundColor Yellow;$global:ReadmeDisplay=$true}

write-host "Found the following interactable elements from our form" -ForegroundColor Cyan

get-variable WPF*

}

 

Get-FormVariables

#===========================================================================
# Actually make the objects work
#===========================================================================
$WPFbranding.source = DecodeBase64Image -ImageBase64 $image
Function Help () { [System.Windows.MessageBox]::Show("Use the Account Creation Form to create one account at a time. Following the instructions to the right of the empty fields, complete the form and click the 'Create' button to create the account  (most of the data can be found on the SAAR). `n`n If there are any issues, please contact me at first.last@contoso.com", 'How to Use the Script') }
$TextInfo = (Get-Culture).TextInfo
function Get-FormFields 
{
#Account Type Dropdown    
    if ($WPFaccttype.Text -eq "ADM")
            {
                $accttypenum = "1"
                $accttype = "ADM"
            }
    elseif ($WPFaccttype.Text -eq "OA")
            {
                $accttypenum = "2"
                $accttype = "OA"
            }
    elseif ($WPFaccttype.Text -eq "WA")
            {
                $accttypenum = "3"
                $accttype = "WA"
            }
    elseif ($WPFaccttype.Text -eq "DA")
            {
                $accttypenum = "4"
                $accttype = "DA"
            }
#Organization Dropdown
    $ou =
        if ($WPForg.Text -eq "Org1")
            {
            "OU=Users,OU=Org1,DC=Contoso,DC=Com"
            }
        elseif ($WPForg.Text -eq "Org2")
            {
            "OU=Users,OU=Org2,DC=Contoso,DC=Com"
            }
        elseif ($WPForg.Text -eq "Org3")
            {
            "OU=Users,OU=Org3,DC=Contoso,DC=Com"
            }
        elseif ($WPForg.Text -eq "Org4")
            {
            "OU=Users,OU=Org4,DC=Contoso,DC=Com"
            }
        elseif ($WPForg.Text -eq "Org5")
            {
            "OU=Users,OU=Org5,DC=Contoso,DC=Com"
            }
        elseif ($WPForg.Text -eq "Org6")
            {
            "OU=Users,OU=Org6,DC=Contoso,DC=Com"
            }
        elseif ($WPForg.Text -eq "Org7")
            {
            "OU=Users,OU=Org7,DC=Contoso,DC=Com"
            }
        elseif ($WPForg.Text -eq "Org8")
            {
            "OU=Users,OU=Org8,DC=Contoso,DC=Com"
            }

#Check Variables
        $UPN                        = $WPFuid.Text + $accttypenum + "@MIL"
        $SAM                        = ($WPFuid.Text + "." + $accttype.ToLower())
        $Name                       = $TextInfo.ToLower($WPFcn.text) 
        $GivenName                  = $TextInfo.ToTitleCase($WPFfirst.Text)
        $SurName                    = $TextInfo.ToTitleCase($WPFlast.Text)
        $Initials                   = $TextInfo.ToTitleCase($WPFmiddle.text)
        $DisplayName                = $WPFdisplayname.text
        $Email                      = $TextInfo.ToLower($WPFemail.text)
        $AccountExpirationDate      = $WPFderos.text
        $Description                = $WPFdisplayname.text
        $Rank                       = $WPFrank.text
        $uid                     = $WPFuid.Text

###   Error Checking   ###
If([String]::IsNullorEmpty($GivenName)){[System.Windows.MessageBox]::Show("Please ensure First Name Field is completely filled out.")}
elseIf([String]::IsNullorEmpty($Initials)){[System.Windows.MessageBox]::Show("Please ensure Middle Initial Field is completely filled out.")}
elseIf([String]::IsNullorEmpty($SurName)){[System.Windows.MessageBox]::Show("Please ensure Last Name Field is completely filled out.")}
elseIf([String]::IsNullorEmpty($Name)){[System.Windows.MessageBox]::Show("Please ensure Valid CN Field is completely filled out.")}
elseIf([String]::IsNullorEmpty($Email)){[System.Windows.MessageBox]::Show("Please ensure Email Field is completely filled out.")}
elseIf([String]::IsNullorEmpty($AccountExpirationDate)){[System.Windows.MessageBox]::Show("Please ensure DEROS Field is completely filled out.")}
elseIf([String]::IsNullorEmpty($DisplayName)){[System.Windows.MessageBox]::Show("Please ensure Display Name Field is completely filled out.")}
elseIf([String]::IsNullorEmpty($Rank)){[System.Windows.MessageBox]::Show("Please ensure Rank Field is completely filled out.")}
elseif ($Email.Substring(0,$Email.Length-9) -ne $Name){[System.Windows.MessageBox]::Show("Invalid CN or Email. The account CN must exactly match all before the @mail.mil in the email address!")}
elseif ($uid.Length -ne 10 -or [int]$uid -isnot [int]) {[System.Windows.MessageBox]::Show("Invalid EDIPI")}
else{
#Put Variables in Hash Table
        $HashArguments = 
            @{ 
            Path                    = $ou;
            Name                    = $Name; 
            GivenName               = $GivenName;
            SurName                 = $SurName;
            Initials                = $Initials;
            UserPrincipalName       = $UPN;
            SamAccountName          = $SAM;
            DisplayName             = $DisplayName;
            PasswordNotRequired     = $true;
            EmailAddress            = $Email;
            AccountExpirationDate   = $AccountExpirationDate;
            ChangePasswordAtLogon   = $false;
            SmartcardLogonRequired  = $true;
            Enabled                 = $true;
            Description             = $Description;
            KerberosEncryptionType  = "AES128, AES256";
            }
        $HashArguments
    }
}

#buttons
$WPFCreate.Add_Click({
    #Resolve Form Settings
    $hash = Get-FormFields
    #create the new AD user
    New-ADUser @hash -PassThru
    #add AD user to selected groups
    $secgroups = $WPFsecgroups.SelectedItems.content
    if($null -ne $secgroups)
        {
        foreach($group in $secgroups)
                {
            Add-ADGroupMember -Identity $group -Members $hash.SamAccountName
                }
        }
    $WPFfirst.Clear()
    $WPFmiddle.Clear()
    $WPFlast.Clear()
    $WPFcn.Clear()
    $WPFemail.Clear()
    $WPFderos.selecteddate = $null
    $WPFdisplayname.Clear()
    $WPFedipi.Clear()
    $WPFaccttype.selecteditem = $null
    $WPForg.selecteditem = $null
    $WPFrank.selecteditem = $null
    $WPFsecgroups.selecteditem = $null
    {[System.Windows.MessageBox]::Show("User Created!")}
    })

$WPFexit.Add_Click({$form.Close()})

$WPFhelp.Add_Click({Help})

$Form.ShowDialog() | out-null
