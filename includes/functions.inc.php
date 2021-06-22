<?php

function kursaiLoader($kursairesult, $autoriusresult, $komentarairesult, $reitingairesult){
    if($kursairesult):
        if(mysqli_num_rows($kursairesult)>0):
            while($product = mysqli_fetch_assoc($kursairesult)):
                ?>
                <div class="card col-lg-4 col-md-6 col-sm-12">
                    <img src="<?php echo $product['Nuotrauka']?>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <a href="#">
                            <h5 class="card-title"><?php echo $product['Pavadinimas']?></h5>
                        </a>
                        <?php echo $product['Autorius']; ?>
                        <p class="autorius"><?php foreach($autoriusresult as $instance){
                            if($product['Autorius'] == $instance['ID']){
                                $vardas = $instance['Vardas_Pavarde'];
                                echo "<span>$vardas</span>";
                            }
                        }?></p>
                        <p class="card-text">
                            <?php echo $product['Trumpas_apr']?>
                        </p>
                        <div class="row">
                            <div class="col">
                                <?php $reitingusuma = 0; $reitinguskaicius = 0; $reitinguvidurkis = 0; foreach($reitingairesult as $instance){
                                    if($product['ID'] == $instance['Kurso_ID']){
                                      $reitingusuma += $instance['Vertinimas'];
                                      $reitinguskaicius++;
                                    }
                                    if($reitinguskaicius > 0){
                                        $reitinguvidurkis = $reitingusuma / $reitinguskaicius;
                                    }
                                    else{
                                        $reitinguvidurkis = 0;
                                    }
                                } echo "<span class='mr-2'>$reitinguvidurkis</span>";
                                for($x=0; $x < $reitinguvidurkis; $x++){
                                    echo "<i class='fas fa-star'></i>";
                                }
                                for($x = 0; $x < (5 - $reitinguvidurkis); $x++){
                                    echo "<i class='far fa-star'></i>";
                                }
                                ?>
                            </div>
                            <div class="col text-align-right">
                                <i class="fas fa-comment"></i>
                                <?php $komentarusuma = 0; foreach($komentarairesult as $instance){
                                    if($product['ID'] == $instance['Kurso_ID']){
                                        $komentarusuma++;
                                    }
                                } echo "<span>$komentarusuma</span>"?>
                            </div>
                        </div>
                    </div>
                </div>
            <?php
            endwhile;
        endif;
    endif;
}

function createRating($conn, $kursoid, $vertinimas){
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    
    $sql = "INSERT INTO reitingai (Kurso_ID, Vertinimas)
    VALUES ($kursoid, $vertinimas)";

    if ($conn->query($sql) === TRUE) {
        echo "Vertinimas sukurtas sekmingai";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
    
    $conn->close();
}