<?php
/*  Realizza una pagina php che richiede un valore all'utente, alla pressione del bottone di submit:
    1. genera un vettore di N (N inserito dall'utente) valori casuali compresi tra 10 e 25;
    2. visualizza il vettore; determina quali valori nel vettori sono numeri primi. */

require("head.php");

    // realizzo il form per la richiesta dei dati...
    echo("<form action=\"p05.php\" method=\"get\">
            <div class=\"mb-3\">
                <label for=\"numeroUno\" class=\"form-label\">Inserisci un numero:</label>
                <input type=\"text\" class=\"form-control\" id=\"numeroUno\" name=\"numeroUno\" placeholder=\"Insert a number\">
            </div>

            <button type=\"submit\" class=\"btn btn-primary\">Verifica</button>
        </form>");

    // realizzo la parte che controlla i dati se la pagina è richiamata dal bottone del form
    if(isset($_REQUEST['numeroUno'])) $n1 = $_REQUEST['numeroUno']; else $n1 = null;
    if(isset($_REQUEST['numeroDue'])) $n2 = $_REQUEST['numeroDue']; else $n2 = null;
    if(isset($_REQUEST['numeroTre'])) $n3 = $_REQUEST['numeroTre']; else $n3 = null;

    if($n1 && $n2 && $n3){      // verifico che esistano tutti e tre i numeri necessari
        if($n1<=$n2 && $n2<=$n3){
            echo("<div class=\"alert alert-success\" role=\"alert\">
                    I tre valori sono in ordine crescente.
                </div>");
        }
        else{
            echo("<div class=\"alert alert-danger\" role=\"alert\">
                    I tre valori NON SONO in ordine crescente.
                </div>");
        }
    }
    else{
        echo("<div class=\"alert alert-warning\" role=\"alert\">
                Attension plis: UNO O PIU' VALORI NON PRESENTI!
            </div>");
    }

require("foot.php");
?>