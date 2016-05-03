<?php
include("dati.txt"); 

// connessione al database 
$link=mysql_connect("$db_host","$db_login","$db_pass") 
	or die ("Non riesco a connettermi al Server!");

mysql_select_db ($database,$link)
        or die ("Non riesco a selezionare il database!");
 
// Esecuzione della query 
$query = "SELECT id_utente,grado,cognome,nome,servizio FROM utente,grado,tipo_servizio WHERE grado.id_grado=utente.id_grado=1 AND utente.id_servizio=tipo_servizio.id_servizio=1";

$result = mysql_query($query,$link);
	if(!$result){
		die("Errore!"); 
}
// Gestione dell'output dati 
echo "<table border=1>
	<tr><td>ID</td>
	<td>Grado</td>
	<td>Cognome</td>
	<td>Nome</td>
	<td>Servizio</td></tr>"; 
while($row = mysql_fetch_array($result, MYSQL_ASSOC)){ 
	$ID = $row["id_utente"];
	$grado = $row["grado"]; 
	$cognome = $row["cognome"]; 
	$nome = $row["nome"];
	$servizio = $row["servizio"];
	echo "<tr>";
	echo "<td>$ID</td>";
	echo "<td>$grado</td>";
	echo "<td>$cognome</td>";
	echo "<td>$nome</td>";
	echo "<td>$servizio</td>";
	echo "</tr>"; 
} 

echo "</table>";
mysql_close($link);
?>
