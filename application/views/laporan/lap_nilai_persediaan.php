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
    <title>Laporan Nilai Persediaan</title>
    <link href="<?php echo base_url() ?>/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="<?php echo base_url() ?>/assets/css/font-awesome.css" rel="stylesheet" />
    <link href="<?php echo base_url() ?>/assets/css/style.css" rel="stylesheet" />

</head>
<body>
<div class="container">
    <div align="right" class="no-print" id="formFilter" style="background-color: #F5F5F5;padding: 4px">
    <a href=""><button type="button" class="btn btn-success" onclick="window.print();return false;">Print</button></a>
    </div>
    <h4 align="center">LAPORAN NILAI PERSEDIAAN</h4>
    <h5 align="center">TOKO : <?php echo $toko->nm_toko ?></h5>
    <h5 align="center">BULAN :  <?php echo date_indo(date('Y-m-d')); ?></h5>

<table id="tbBiaya" class="table table-bordered table-responsive">
<thead>
    <tr>
        <th style="width:50px;">No</th>
        <th>Kode Barang</th>
        <th>Nama Barang</th>
        <th><font color="red">Supplier</font></th>
        <th>Stok</th>
        <th>HPP</th>
        <th>Harga Jual</th>
    </tr>
</thead>
<tbody>
    <?php foreach ($nilai_persediaan->result() as $key): ?>
        <?php
$nilai_modal = $key->stok * $key->modal_per_porsi;
?>
    <tr>
        <td style="text-align:center;"><?php echo $no++ ?></td>
        <td style="text-align:left;"><?php echo $key->kd_barang ?></td>
        <td style="text-align:left;"><?php echo $key->nm_barang ?></td>
        <td style="text-align:left;"><?php echo $key->kd_supplier ?></td>
        <td style="text-align:center;"><?php echo $key->stok ?></td>
        <td style="text-align:right;"><?php echo number_format($key->hrg_beli, 0, ',', '.') ?></td>
        <td style="text-align:right;"><?php echo number_format($key->hrg_jual, 0, ',', '.') ?></td>
    </tr>
    <?php
$tot += $key->stok;
$tot_nbeli += $key->hrg_beli;
$tot_njual += $key->hrg_jual;
?>
    <?php endforeach?>
</tbody>
<tr>
    <tr>
        <td colspan="4" style="text-align:center;"><b>Total</b></td>
        <td style="text-align:center;"><b><?php echo $tot ?></b></td>
        <td style="text-align:right;"><b><?php echo number_format($tot_nbeli, 0, ',', '.') ?></b></td>
        <td style="text-align:right;"><b><?php echo number_format($tot_njual, 0, ',', '.') ?></b></td>
</tr>
</table>
</div>
</body>
</html>