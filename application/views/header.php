<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="Aplikasi Point of Sales" />
    <meta name="author" content="yoriadiatma" />
    <link rel="icon" type="image/png" href="<?php echo base_url('assets/') ?>/img/favicon.png"/>
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Alkhaibar Minimart</title>
    <link href="<?php echo base_url() ?>/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="<?php echo base_url() ?>/assets/css/font-awesome.css" rel="stylesheet" />
    <link href="<?php echo base_url() ?>/assets/css/style.css" rel="stylesheet" />
    <link href="<?php echo base_url() ?>/assets/css/toastr.min.css" rel="stylesheet" />
    <link href="<?php echo base_url() ?>/assets/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="<?php echo base_url() ?>/assets/css/buttons.dataTables.min.css" rel="stylesheet" />
    <link href="<?php echo base_url() ?>/assets/css/jquery-ui.css" rel="stylesheet" />
    <link href="<?php echo base_url() ?>/assets/css/bootstrap-select.min.css" rel="stylesheet" >

</head>
<body>
    <?php
    $hak = $this->session->userdata('akses');
    ?>
    <section class="menu-section no-print">
        <div class="navbar navbar-inverse set-radius-zero no-print" >
         <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<?php echo base_url('dashboard/') ?>">Dashboard</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                     <?php if ($hak != 'kasir'): ?>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" title=""><span class="fa fa-shopping-cart" aria-hidden="true"></span> Menu Barang</a>
                            <ul class="dropdown-menu">
                                <li><a href="<?php echo base_url('gudang/barang/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Data Barang</a></li> 
                                <li><a href="<?php echo base_url('gudang/satuan/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Satuan Barang</a></li>
                                <li><a href="<?php echo base_url('gudang/kategori/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Kategori Barang</a></li> 
                                <li><a href="<?php echo base_url('gudang/supplier/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Supplier</a></li> 
                            </ul>
                        </li>
                        <?php endif?>

                        <?php if ($hak != 'gudang'): ?>
                        <li class="dropdown">
                            <a href=""><span class="fa fa-refresh"></span> Menu Gudang</a>
                            <ul class="dropdown-menu">
                                <li><a href="<?php echo base_url('gudang/pembelian-start/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Pembelian</a></li> 
                                <li><a href="<?php echo base_url('gudang/stok/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Stok Barang</a></li>
                                <li><a href="<?php echo base_url('gudang/bahan-rusak/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Retur</a></li> 
                                <li><a href="<?php echo base_url('gudang/stok-min/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Barang Siap Order</a></li> 
                            </ul>
                        </li>
                        <?php endif?>

                        <?php if ($hak != 'gudang'): ?>
                        <li class="dropdown">
                            <a href=""><span class="fa fa-line-chart"></span> Menu Kasir</a>
                            <ul class="dropdown-menu">
                                <li><a href="<?php echo base_url('kasir/nomor-faktur/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Mesin Kasir</a></li> 
                                <li><a href="<?php echo base_url('kasir/input-biaya/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Input Biaya</a></li>
                                <li><a href="<?php echo base_url('kasir/rekap/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Rekap Hari Ini</a></li> 
                                <li><a href="<?php echo base_url('kasir/barang-masuk/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Barang Masuk Hari Ini</a></li>
                                 <li><a href="<?php echo base_url('kasir/retur/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Barang retur</a></li> 
                            </ul>
                        </li>
                        <?php endif?>

                        <?php if ($hak == 'manager'): ?>
                        <li class="dropdown">
                            <a href=""><span class="fa fa-file"></span> Manajer Toko</a>
                            <ul class="dropdown-menu">
                                <li><a href="<?php echo base_url('manajer/toko/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Toko</a></li> 
                                <li><a href="<?php echo base_url('manajer/user/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> User</a></li>
                                <li><a href="<?php echo base_url('gudang/stok/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Stok Barang</a></li> 
                                <li><a href="<?php echo base_url('manajer/kartu-stok/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Kartu Stok</a></li>
                                <li><a href="<?php echo base_url('gudang/stok-min/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Barang Menipis</a></li> 
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href=""><span class="fa fa-file"></span> Laporan</a>
                            <ul class="dropdown-menu">
                                <li><a href="<?php echo base_url('laporan/biaya/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Biaya-biaya</a></li> 
                                <li><a href="<?php echo base_url('laporan/nilai-persediaan/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Persedian Barang</a></li>
                                <li><a href="<?php echo base_url('laporan/pembelian/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Pembelian</a></li> 
                                <li><a href="<?php echo base_url('laporan/penjualan-transaksi/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Penjualan Per Transaksi</a></li>
                                <li><a href="<?php echo base_url('laporan/profit/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Profit Penjualan</a></li>
                                <li><a href="<?php echo base_url('laporan/rekap/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Rekapitulasi Penjualan</a></li> 
                            </ul>
                        <li class="dropdown">
                            <a href=""><span class="fa fa-file"></span> Grafik</a>
                            <ul class="dropdown-menu">
                                <li><a href="<?php echo base_url('grafik/stok-barang/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Grafik Stok Barang</a></li> 
                                <li><a href="<?php echo base_url('grafik/profit-bulanan/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Grafik Profit Bulanan</a></li>
                                <li><a href="<?php echo base_url('grafik/penjualan-bulanan/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Grafik Penjualan Bulanan</a></li> 
                                <li><a href="<?php echo base_url('grafik/penjualan-tahun/') ?>"><span class="fa fa-cubes" aria-hidden="true"></span> Grafik Penjualan Tahunan</a></li> 
                            </ul>
                        </li>
                         <?php endif?>
                          <!-- <li>
                            <a href="<?php echo base_url('kodekucetak/cari.php') ?>"><span class="fa fa-sign-out"></span> Cetak Barcode</a>
                        </li> -->

                         <li>
                            <a href="<?php echo base_url('login/logout/') ?>"><span class="fa fa-sign-out"></span> Logout</a>
                        </li>
                        
                    </ul>


                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>
     </div>
    </section>