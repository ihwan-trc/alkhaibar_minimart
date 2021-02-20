 <!DOCTYPE html>
 <html>
 <head>
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Produk By ihwan-m.github.io">
    <meta name="author" content="Muhamad Ihwan">

    <title>Alkhaibar Minimart</title>

    <!-- Bootstrap Core CSS -->
      <link href="<?php echo base_url().'assets/css/bootstrap.min.css'?>" rel="stylesheet">
     
    <!-- Custom CSS -->
      <link href="<?php echo base_url().'assets/css/4-col-portfolio.css'?>" rel="stylesheet">

      <style type="text/css">
      .bg {
           width: 100%;
           height: 100%;
           position: fixed;
           z-index: -1;
           float: left;
           left: 0;
           margin-top: -20px;
      }
      </style>
 </head>
 <body>
 <img src="<?php echo base_url().'assets/img/alkhaibar.jpeg'?>" alt="gambar" class="bg" />

  <!-- MENU SECTION END-->
    <div class="content-wrapper">
      <div class="container">
        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
              <span class="pull-right" style="font-size: 20px; color: #fff;"> <?php echo date_indo(date('Y-m-d')) ?>&nbsp;&nbsp;<span id="waktu"></span></span>
              <?php
                $query = $this->db->get('tabel_toko', 1, 0);
                $toko = $query->row();
                $namatoko = $toko->nm_toko;
              ?>
                <h1 class="page-header" style="color:#fcc;">Welcome to
                    <small class="mart" style="color: #5af542;"><?php echo $namatoko ?></small>
                </h1>
               
               
            </div>
        </div>
 <!--  <div class="mainbody-section text-center">
     <?php $h=$this->session->userdata('akses'); ?>
      -->

        <!-- Projects Row
        <div class="row">
         <?php if($h=='admin'){ ?> 
            <div class="col-md-3 portfolio-item">
                <div class="menu-item blue" style="height:150px;">
                     <a href="<?php echo base_url().'admin/penjualan'?>" data-toggle="modal">
                           <i class="fa fa-shopping-bag"></i>
                            <p style="text-align:left;font-size:14px;padding-left:5px;">Penjualan Eceran</p>
                      </a>
                </div> 
            </div>
            <div class="col-md-3 portfolio-item">
                <div class="menu-item green" style="height:150px;">
                     <a href="<?php echo base_url().'admin/penjualan_grosir'?>" data-toggle="modal">
                           <i class="fa fa-cubes"></i>
                            <p style="text-align:left;font-size:14px;padding-left:5px;">Penjualan Grosir</p>
                      </a>
                </div> 
            </div>
            <div class="col-md-3 portfolio-item">
                <div class="menu-item light-orange" style="height:150px;">
                     <a href="<?php echo base_url().'admin/suplier'?>" data-toggle="modal">
                           <i class="fa fa-truck"></i>
                            <p style="text-align:left;font-size:14px;padding-left:5px;">Suplier</p>
                      </a>
                </div> 
            </div>
            <div class="col-md-3 portfolio-item">
                <div class="menu-item color" style="height:150px;">
                     <a href="<?php echo base_url().'admin/kategori'?>" data-toggle="modal">
                           <i class="fa fa-sitemap"></i>
                            <p style="text-align:left;font-size:14px;padding-left:5px;">Kategori</p>
                      </a>
                </div> 
            </div>
            <?php }?>
            <?php if($h=='2'){ ?> 
            <div class="col-md-3 portfolio-item">
                <div class="menu-item blue" style="height:150px;">
                     <a href="#" data-toggle="modal">
                           <i class="fa fa-shopping-cart"></i>
                            <p style="text-align:left;font-size:14px;padding-left:5px;">Penjualan Eceran</p>
                      </a>
                </div> 
            </div>
            <div class="col-md-3 portfolio-item">
                <div class="menu-item green" style="height:150px;">
                     <a href="#" data-toggle="modal">
                           <i class="fa fa-users"></i>
                            <p style="text-align:left;font-size:14px;padding-left:5px;">Penjualan Grosir</p>
                      </a>
                </div> 
            </div>
            <div class="col-md-3 portfolio-item">
                <div class="menu-item light-orange" style="height:150px;">
                     <a href="#" data-toggle="modal">
                           <i class="fa fa-truck"></i>
                            <p style="text-align:left;font-size:14px;padding-left:5px;">Suplier</p>
                      </a>
                </div> 
            </div>
            <div class="col-md-3 portfolio-item">
                <div class="menu-item color" style="height:150px;">
                     <a href="#" data-toggle="modal">
                           <i class="fa fa-sitemap"></i>
                            <p style="text-align:left;font-size:14px;padding-left:5px;">Kategori</p>
                      </a>
                </div> 
            </div>
            <?php }?>
        </div>
        
        /.row -->

        <!-- Projects Row -->
        <!-- <div class="row">
        <?php if($h=='1'){ ?> 
            <div class="col-md-3 portfolio-item">
                <div class="menu-item purple" style="height:150px;">
                     <a href="<?php echo base_url().'admin/barang'?>" data-toggle="modal">
                           <i class="fa fa-shopping-cart"></i>
                            <p style="text-align:left;font-size:14px;padding-left:5px;">Barang</p>
                      </a>
                </div> 
            </div>
            <div class="col-md-3 portfolio-item">
                <div class="menu-item red" style="height:150px;">
                     <a href="<?php echo base_url().'admin/pengguna'?>" data-toggle="modal">
                           <i class="fa fa-users"></i>
                            <p style="text-align:left;font-size:14px;padding-left:5px;">Pengguna</p>
                      </a>
                </div> 
            </div>
            <div class="col-md-3 portfolio-item">
                <div class="menu-item blue" style="height:150px;">
                     <a href="<?php echo base_url().'admin/laporan'?>" data-toggle="modal">
                           <i class="fa fa-bar-chart"></i>
                            <p style="text-align:left;font-size:14px;padding-left:5px;">Laporan</p>
                      </a>
                </div> 
            </div>
            <div class="col-md-3 portfolio-item">
                <div class="menu-item light-red" style="height:150px;">
                     <a href="<?php echo base_url().'admin/pembelian'?>" data-toggle="modal">
                           <i class="fa fa-cubes"></i>
                            <p style="text-align:left;font-size:14px;padding-left:5px;">Pembelian</p>
                      </a>
                </div> 
            </div>
            <?php }?>
            <?php if($h=='2'){ ?> 
            <div class="col-md-3 portfolio-item">
                <div class="menu-item purple" style="height:150px;">
                     <a href="<?php echo base_url().'admin/penjualan_grosir'?>" data-toggle="modal">
                           <i class="fa fa-cubes"></i>
                            <p style="text-align:left;font-size:14px;padding-left:5px;">Penjualan Grosir</p>
                      </a>
                </div> 
            </div>
            <div class="col-md-3 portfolio-item">
                <div class="menu-item red" style="height:150px;">
                     <a href="<?php echo base_url().'admin/penjualan'?>" data-toggle="modal">
                           <i class="fa fa-shopping-bag"></i>
                            <p style="text-align:left;font-size:14px;padding-left:5px;">Penjualan Eceran</p>
                      </a>
                </div> 
            </div>
            <div class="col-md-3 portfolio-item">
                <div class="menu-item blue" style="height:150px;">
                     <a href="#" data-toggle="modal">
                           <i class="fa fa-bar-chart"></i>
                            <p style="text-align:left;font-size:14px;padding-left:5px;">Laporan</p>
                      </a>
                </div> 
            </div>
            <div class="col-md-3 portfolio-item">
                <div class="menu-item light-red" style="height:150px;">
                     <a href="#" data-toggle="modal">
                           <i class="fa fa-cubes"></i>
                            <p style="text-align:left;font-size:14px;padding-left:5px;">Pembelian</p>
                      </a>
                </div> 
            </div>
            <?php }?>
        </div>
      </div>
    </div> -->
     <!-- CONTENT-WRAPPER SECTION END-->
   <!--  <section class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                   &copy; Copyright <?php echo date('Y') ?>, <a href="#" target="_blank">Ihwan Solutions</a>
                </div>
            </div>
        </div>
    </section> -->
    <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <script src="<?php echo base_url() ?>/assets/js/jquery-1.10.2.js"></script>
    <script src="<?php echo base_url() ?>/assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="<?php echo base_url() ?>/assets/js/bootstrap.js"></script>
    <script src="<?php echo base_url() ?>/assets/js/custom.js"></script>
    <script src="<?php echo base_url() ?>/assets/js/sweetalert.min.js"></script>
    <script src="<?php echo base_url() ?>/assets/js/toastr.min.js"></script>
    <script>
      $("ul.nav li.dropdown").hover(function(){$(this).find(".dropdown-menu").stop(!0,!0).delay(100).fadeIn(500)},function(){$(this).find(".dropdown-menu").stop(!0,!0).delay(100).fadeOut(500)});
      var pesan="<?php echo $this->session->flashdata('msg'); ?>";pesan&&(toastr.options={positionClass:"toast-top-right"},toastr.success(pesan));

      function startTime() {
        var today = new Date();
        var h = today.getHours();
        var m = today.getMinutes();
        var s = today.getSeconds();
        m = checkTime(m);
        s = checkTime(s);
        document.getElementById('waktu').innerHTML = h + ":" + m + ":" + s;
        var t = setTimeout(startTime, 500);
      }

      function checkTime(i) {
          if (i < 10) {i = "0" + i};
          return i;
      }

      $(document).ready(function() {
        startTime();
      });
    </script>

</body>
</html>