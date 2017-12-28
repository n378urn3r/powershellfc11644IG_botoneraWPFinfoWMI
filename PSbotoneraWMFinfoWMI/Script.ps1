[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$xaml = @'
<Window x:Name="wndMain"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:local="clr-namespace:WpfApp3"
       
        Title="Info y ut. de Sistema" Height="363.191" Width="525">
    <Grid x:Name="grdMain">
        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="194*"/>
            <ColumnDefinition Width="323*"/>
        </Grid.ColumnDefinitions>
        <Button x:Name="btnShutdown" Content="Apagar Equipo" HorizontalAlignment="Left" Height="39" Margin="42,30,0,0" VerticalAlignment="Top" Width="133" Click="Button_Click"/>
        <Button x:Name="btnLogoff" Content="Cerrar sesion" HorizontalAlignment="Left" Height="39" Margin="35,30,0,0" VerticalAlignment="Top" Width="133" Click="Button_Click" Grid.Column="1"/>
        <Button x:Name="btnBiosinfo" Content="Info de BIOS" HorizontalAlignment="Left" Height="39" Margin="42,102,0,0" VerticalAlignment="Top" Width="133" Click="Button_Click"/>
        <Button x:Name="btnProcesorinfo" Content="Info de Procesador" HorizontalAlignment="Left" Height="39" Margin="35,102,0,0" VerticalAlignment="Top" Width="133" Click="Button_Click" Grid.Column="1"/>
        <Button x:Name="btnComputerinfo" Content="Info de Equipo" HorizontalAlignment="Left" Height="39" Margin="42,146,0,0" VerticalAlignment="Top" Width="133" Click="Button_Click"/>
        <Button x:Name="btnInstalledreviewinfo" Content="Revisiones Instaladas" HorizontalAlignment="Left" Height="39" Margin="35,146,0,0" VerticalAlignment="Top" Width="133" Click="Button_Click" Grid.Column="1"/>
        <Button x:Name="btnOSinfo" Content="Info del OS" HorizontalAlignment="Left" Height="39" Margin="42,190,0,0" VerticalAlignment="Top" Width="133" Click="Button_Click"/>
        <Button x:Name="btnOwnnerinfo" Content="Propietarios/usuarios" HorizontalAlignment="Left" Height="39" Margin="35,190,0,0" VerticalAlignment="Top" Width="133" Click="Button_Click" Grid.Column="1"/>
        <Button x:Name="btnDiskspaceinfo" Content="Disco disponible" HorizontalAlignment="Left" Height="39" Margin="42,234,0,0" VerticalAlignment="Top" Width="133" Click="Button_Click"/>
        <Button x:Name="btnLocalhour" Content="Hora Local" HorizontalAlignment="Left" Height="39" Margin="35,234,0,0" VerticalAlignment="Top" Width="133" Click="Button_Click" Grid.Column="1"/>
        <Button x:Name="btnSessioninfo" Content="Info de sesion" HorizontalAlignment="Left" Height="39" Margin="42,278,0,0" VerticalAlignment="Top" Width="133" Click="Button_Click"/>
        <Button x:Name="btnWmiobjectinfo" Content="Infode Obj. WMI" HorizontalAlignment="Left" Height="39" Margin="35,278,0,0" VerticalAlignment="Top" Width="133" Click="Button_Click" Grid.Column="1"/>
        <Button x:Name="btnClose" Content="Salir" HorizontalAlignment="Left" Height="39" Margin="180,278,0,0" VerticalAlignment="Top" Width="133" Click="Button_Click" Grid.Column="1"/>

    </Grid>
</Window>
'@
#provisionamos objetos wpf en objetos .
$reader=(New-Object System.Xml.XmlNodeReader $xaml)
$Form=[Windows.Markup.XamlReader]::Load( $reader )

$btnShutdown= $Form.FindName('btnShutdown')
$btnLogoff= $Form.FindName('btnLogoff')
$btnBiosinfo= $Form.FindName('btnBiosinfo')
$btnProcesorinfo= $Form.FindName('btnProcesorinfo')
$btnComputerinfo= $Form.FindName('btnComputerinfo')
$btnInstalledreviewinfo= $Form.FindName('btnInstalledreviewinfo')
$btnOSinfo= $Form.FindName('btnOSinfo')
$btnOwnnerinfo= $Form.FindName('btnOwnnerinfo')
$btnDiskspaceinfo= $Form.FindName('btnDiskspaceinfo')
$btnLocalhour= $Form.FindName('btnLocalhour')
$btnSessioninfo= $Form.FindName('btnSessioninfo')
$btnWmiobjectinfo= $Form.FindName('btnWmiobjectinfo')
$btnClose= $Form.FindName('btnClose')

#provisionamos clicks
<#$btnShutdown.Add_Click({  })
$btnLogoff.Add_Click({  }) 
$btnBiosinfo.Add_Click({  })
$btnProcesorinfo.Add_Click({  }) 
$btnComputerinfo.Add_Click({  }) 
$btnInstalledreviewinfo.Add_Click({  }) 
$btnOSinfo.Add_Click({  }) 
$btnOwnnerinfo.Add_Click({  })
$btnDiskspaceinfo.Add_Click({  })
$btnLocalhour.Add_Click({  }) 
$btnSessioninfo.Add_Click({  })
$btnWmiobjectinfo.Add_Click({  }) #>

$btnClose.Add_Click({ 
	$Form.Close()
}) 

#cargamos form.
$Form.ShowDialog()





# Enunciado
#
<# Ejercicio 
Acceder a 
https://docs.microsoft.com/es-es/powershell/scripting/getting-started/basic-
cookbooks?view=powershell-5.1
Crear una aplicación que pueda hacer lo siguiente:


Cambiar el estado del equipo
   Cerrar la sesión actual
    Apagar o reiniciar un equipo
Recopilar información acerca de los equipos
OEnumerar información del BIOS
Enumerar información del procesador
Enumerar el modelo y el fabricante del equipo
Enumerar las revisiones instaladas
Enumerar la información de versión del sistema operativo
Enumerar el propietario y los usuarios locales
Obtener el espacio disponible en disco
Obtener información de la sesión de inicio
Obtener la hora local de un equipo
Obtener objetos de WMI (
Get-WmiObject
)
Utilizando la tecnología WMI obtenga la información de memoria del equipo


#>