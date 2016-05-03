<?php
include("dati.txt");
//variabili
   $grado=$_POST['mod_grado'];
   $cognome=$_POST['mod_cognome'];
   $cognome=strtoupper($cognome);
   $nome=$_POST['mod_nome'];
   $nome=strtoupper($nome);
   $nasc=$_POST['mod_nasc'];
   $anz=$_POST['mod_anz'];
   $servizio=$_POST['mod_serv'];
   
$link=mysql_connect("$db_host","$db_login","$db_pass") or die ("Non riesco a connettermi a $db_host");

mysql_select_db ($database, $link)
        or die ("Non riesco a selezionare il db $database<br>");

$pers="INSERT INTO utente (id_utente, id_grado, cognome, nome, data_nascita, anzianita, id_servizio) VALUES ('', '$grado', '$cognome', '$nome', '$nasc', '$anz', '$servizio')";
mysql_query ($pers, $link)
        or die ("Non riesco ad eseguire la query $pers");

                Echo "I Dati sono stati archiviati con successo nel DataBase $database <br>
		      Vai al <a href=\"elencoutenti.php\">Elenco utenti</a>";
mysql_close ($link);
?>
