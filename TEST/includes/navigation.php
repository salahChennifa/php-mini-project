<?php
 $query_count = "SELECT * FROM EVENEMENTS ";
 $result_count = mysqli_query($conn, $query_count);
 $count = mysqli_num_rows($result_count);
 
 
 $per_page = 6;
 $count = ceil($count / $per_page);
 
 
 $count_menu = ceil($count/2);  
 
 
 
 $count_nbr_page_foreach_menu = ceil( $count_menu / 2);
 
 






?>


<nav class="menu">
      <ol>
        <li class="menu-item"><a href="index.php?full_page=1&page=1">Home</a></li>
      
        
        <?php
         $aide = 1;
          for ($i = 1; $i<=$count_menu; $i++){
        ?>
        <li class="menu-item">
          <a href="#0"><?php echo "Menu ".$i ?></a>
          <ol class="sub-menu">
            <?php 
              
              
             
              if ($aide == 1){
                for ($j = 1; $j<=$count_nbr_page_foreach_menu; $j++){
                  $tmp = $j*2 -1;
                  echo " <li class='menu-item'><a href='index.php?full_page={$j}&page={$tmp}'>page{$j}</a></li>";
                  $aide = $j +1;
                }
              }
              
              else{
                for ($j = $aide; $j < $aide + $count_nbr_page_foreach_menu ; $j++){
                  $tmp = $j*2 -1;
                  echo " <li class='menu-item'><a href='index.php?full_page={$j}&page={$tmp}'>page{$j}</a></li>";
                  if ($j == $aide + $count_nbr_page_foreach_menu ){
                    $aide = $j + 1;
                    break;
                  }
                  
                }
              }

              
            ?>
          </ol>
        </li>

        <?php  }?>

        <li class="menu-item"><a href="#0">Contact</a></li>
      </ol>
    </nav>
