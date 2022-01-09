<?php include 'includes/head.php'?>

<?php

if (isset($_GET['file'])) {
  $file = $_GET['file'].".pdf";
  header("content-disposition: attachment; filename=".urlencode($file));
  $fb = fopen($file, "r");
  while(!feof($fb)){
    echo fread($fb, 8192);
    flush();
  }
  fclose($fb);
}



$per_page = 6;

if (isset($_GET['page'])){
  $page = $_GET['page'];
}
else{
  $page = "";
}
if ($page== "" || $page == 1){
  $page_1 = 0;
}
else{
  $page_1 = ($page*$per_page) - $per_page;
}

?>
<body>
    
    <?php include 'includes/navigation.php' ?>
    

    
    <section class="cards-wrapper">

    <?php 
        function dateToFrench($date, $format) 
        {
            $english_days = array('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');
            $french_days = array('lundi', 'mardi', 'mercredi', 'jeudi', 'vendredi', 'samedi', 'dimanche');
            $english_months = array('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
            $french_months = array('janvier', 'février', 'mars', 'avril', 'mai', 'juin', 'juillet', 'août', 'septembre', 'octobre', 'novembre', 'décembre');
            return str_replace($english_months, $french_months, str_replace($english_days, $french_days, date($format, strtotime($date) ) ) );
        }
        
        $query_count = "SELECT * FROM EVENEMENTS ";
        $result_count = mysqli_query($conn, $query_count);
        $count = mysqli_num_rows($result_count);
        
        $count = ceil($count / $per_page);
        
        

       
        $query = "SELECT * FROM EVENEMENTS LIMIT $page_1, $per_page";
        $result = mysqli_query($conn, $query);
        if (!$result){
            die("Error" . mysqli_error($conn));
        }
        while ($row = mysqli_fetch_assoc($result)){
            $id = $row["id_evenemnt"];
            $Designation_event = $row["Designation_event"];
            
            $Debut_event = $row["Debut_event"];
            $Fin_event = $row["Fin_event"];
            $image_event = $row["image_event"];
            $file_event = $row["file_event"];
            $Lieu_event = $row["Lieu_event"];
            $Description_event_short = substr($row["Description_event"], 0,100);
            
            
            $date_debut = date_create($Debut_event);
            $date_fin = date_create($Fin_event);
           
            $date_title =  dateToFrench($Debut_event,'l j F Y');
            $hour_date_debut = date_format($date_debut, 'g:i A');
            $date_debut  = date_format($date_debut, 'd/m/y');

            $hour_date_fin = date_format($date_fin, 'g:i A');
            $date_fin  = date_format($date_fin, 'd/m/y');
            
            
            
            
            
            
    ?>
    
   
 
  


    
    <div class="card-grid-space">
      
      <a class="card" href="event.php?id_event=<?php echo $id ?>" style="--bg-img: url('images/<?php echo $image_event?>')">
        <div>
          
          <h1><?php echo $Designation_event?></h1>
          
          <p><?php echo $Description_event_short ?>…</p>
          <p> <span class="A">Date debut :</span> <?php echo $date_debut ?> à <?php echo $hour_date_debut ?> </p>
          <p><span class="A">Date Fin :</span>  <?php echo $date_fin ?> à <?php echo $hour_date_fin ?> </p>
          <p><span class="A">Lieu :</span>  <?php echo $Lieu_event ?></p>
          <p><span class="A">Documents joint :</span> <?php echo $file_event ?></p>
          
          <div class="date"><?php echo $date_title ?></div>
          <div class="tags">
            
            <div class="tag">READ MORE</div>
          </div>
        </div>
      </a>
    </div>
    


    <?php }?>
 
  </section>





<div class="pagination-wrapper">
    <div class="pagination">
    
    <?php
      $index = 1;
      
      if (isset($_GET['full_page'])){
        $full_page = $_GET['full_page'];
        $debut = $full_page*2 -1;
        for($h = $debut; $h<=$debut+1; $h++){
          if ($h == $page){
            echo "<span aria-current='page' class='page-numbers current'>{$index}</span>";
          }
          else{
            echo "<a href='index.php?full_page={$full_page}&page={$h}' class='page-numbers' >{$index}</a>";
          }
          $index ++;
        }
      }
      else{
        
      }

?>
     
    
     
    </div>
  </div>

      
</body>
</html>

