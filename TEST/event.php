<?php
 include 'includes/head_Blog.php';
 if (isset($_GET['id_event'])){
     $id = $_GET['id_event'];
 }
?>

<body id="top" class="ss-single">

    <?php include 'includes/navigation.php'?>


    <?php 
        function dateToFrench($date, $format) 
        {
            $english_days = array('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');
            $french_days = array('lundi', 'mardi', 'mercredi', 'jeudi', 'vendredi', 'samedi', 'dimanche');
            $english_months = array('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
            $french_months = array('janvier', 'février', 'mars', 'avril', 'mai', 'juin', 'juillet', 'août', 'septembre', 'octobre', 'novembre', 'décembre');
            return str_replace($english_months, $french_months, str_replace($english_days, $french_days, date($format, strtotime($date) ) ) );
        }
        
     

       
        $query = "SELECT * FROM EVENEMENTS WHERE id_evenemnt = $id";
        $result = mysqli_query($conn, $query);
        if (!$result){
            die("Error" . mysqli_error($conn));
        }
        while ($row = mysqli_fetch_assoc($result)){
            $id = $row["id_evenemnt"];
            $Designation_event = $row["Designation_event"];
            $Description_event = $row["Description_event"];
            $Debut_event = $row["Debut_event"];
            $Fin_event = $row["Fin_event"];
            $image_event = $row["image_event"];
            $file_event = $row["file_event"];
            $Lieu_event = $row["Lieu_event"];
            
              
            $date_title_debut =  dateToFrench($Debut_event,'l j F Y');
            $date_title_fin = dateToFrench($Fin_event,'l j F Y');
           
            
 
        }
    ?>
    <div class="s-content">

        <div class="row">

            <div id="main" class="s-content__main large-8 column">

                <article class="entry">

                    <header class="entry__header">

                        <h2 class="entry__title">
                            <a href="single.html" title=""><?php echo $Designation_event ?></a>
                        </h2>

                        <div class="entry__meta">
                            <ul>
                                <li><?php echo $date_title_debut ?></li>
                                <li><?php echo $date_title_fin ?></li>
                              
                                <li><?php echo $Lieu_event ?></li>
                            </ul>
                        </div>
                     
                    </header> 

                    <div class="entry__content-media">
                        <img src="images/<?php echo $image_event?>" 
                             alt="">
                    </div>

                    <div class="entry__content">
                        <p >
                        <?php echo $Description_event?>
                        </p>
                        <p >
                        <?php echo $Description_event?>
                        </p>
                        <p >
                        <?php echo $Description_event?>
                        </p>
                        <p >
                        <?php echo $Description_event?>
                        </p>

                        <div class="container_1 text-center">
                        <h1 class="B"> Downland file :  <?php echo $file_event?>  </h1>
                        <a class="rainbow rainbow-1" href="files/<?php echo $file_event?>"> Downland !</a>
                        
                    </div> 


                </article> 

                
            </div> 


            <div id="sidebar" class="s-content__sidebar large-4 column">

            
              

                
               
                <div class="widget widget_popular">
                    <h3 class="h6">Evenements</h3>

                    <ul class="link-list">
                        <?php 
                        $index = 0;
                        
                        $query = "SELECT * FROM EVENEMENTS ";
                        $result = mysqli_query($conn, $query);
                        $count = mysqli_num_rows($result);
                        $aleotoire = rand(1,$count);
                        
                        if (!$result){
                            die("Error" . mysqli_error($conn));
                        }
                        while ($row = mysqli_fetch_assoc($result)){
                            $id = $row["id_evenemnt"];
                            $Designation_event = $row["Designation_event"];
                            $Description_event = $row["Description_event"];
                            $Debut_event = $row["Debut_event"];
                            $Fin_event = $row["Fin_event"];
                            $image_event = $row["image_event"];
                            $file_event = $row["file_event"];
                            $Lieu_event = $row["Lieu_event"];
                            $Description_event_short = substr($row["Description_event"], 0,25);
                            $date_debut = date_create($Debut_event);
                            $date_fin = date_create($Fin_event);
                         
                        
                        ?>
                      <li>
                        <div class="center">
                            <div class="property-card">
                                <a href="event.php?id_event=<?php echo $id ?>">
                                <div class="property-image" style=" background-image:url('images/<?php echo $image_event ?>');">
                                    
                                </div></a>
                                <div class="property-description">
                                <h5> <?php echo $Designation_event ?> </h5>
                                <p> <?php echo $Description_event_short ?> ...</p>
                                </div>
                            </div>
                        </div>
                        </li>
                        <?php
                        if ($index == 3){
                            break;
                        }
                        $index ++;
                    }?>
                       
                    </ul>
                </div>
               
            </div> 

        </div> 

    </div> 


    
    <footer class="s-footer">
        <div class="ss-go-top">
            <a class="smoothscroll" title="Back to Top" href="#top">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M12 0l8 9h-6v15h-4v-15h-6z"/></svg>
            </a>

   </footer> 


   
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/main.js"></script>

</body>

</html>