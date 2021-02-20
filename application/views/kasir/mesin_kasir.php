        <div class="col-md-12">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h1 class="">Transaksi
                    <small>Penjualan</small>
                    <a href="#" data-toggle="modal" data-target="#largeModal" class="pull-right"><small>Cari Produk?</small></a>
                </h1>
                Faktur : <?php echo $faktur->no_faktur_penjualan ?><!-- <span class="pull-right"><?php echo date_indo($tgl) ?> <span id="waktu"></span></span> --><br>
                <input type="hidden" name="nofak" id="nofak" value="<?php echo $faktur->no_faktur_penjualan ?>">
                <input type="text" id="kd_barang" name="kd_barang" for="kd_barang" placeholder="Masukkan kode barang" autofocus="on" required>
              <table class="pull-right" style="width: 20%;height: 20px;">
                <tr>
                  <td style="font-size: 18pt;color: red;">TOTAL :</td>
                  <?php if ($faktur->diskon > 0): ?>
                      <td align="right" style="font-size: 32pt"><strong><?php echo number_format($faktur->total_penjualan_sdiskon, 0, ',', '.') ?></strong></td>
                    <?php else: ?>
                      <td align="right" style="font-size: 32pt"><strong><?php echo number_format($belanja->tot_bel, 0, ',', '.') ?></strong></td>
                  <?php endif?>
                </tr>
              </table>

            </div>
            <div class="panel-body">
            <table id="tbUser" class="table table-bordered table-responsive">
              <thead>
                <tr>
                  <td align="center">Aksi</td>
                  <td>Kode Barang</td>
                  <td>Nama Barang</td>
                  <td align="center">Harga</td>
                  <td align="center">Jumlah</td>
                  <td align="center">Diskon %</td>
                  <td align="center">Subtotal</td>
                </tr>
              </thead>
              <tbody>
                <?php foreach ($list->result() as $key): ?>
                <tr>


                  <td align="center"><button> <a onclick="return confirm('Yakin hapus data ini?');" href="<?php echo base_url('kasir/hapus-barang-beli/') . $key->no_faktur_penjualan . "/" . $key->kd_barang ?>">Hapus</a></button></td>
                 

                  <td><?php echo $key->kd_barang ?></td>
                  <td><?php echo substr($key->nm_barang, 0, 40) ?></td>
                  <td align="right"><?php echo number_format($key->harga, 0, ',', '.') ?></td>
                  <td align="center">
                  <form action="<?php echo base_url('kasir/edit_jumlah_beli/') ?>" id="formD" name="formD" action="" method="post" enctype="multipart/form-data">
                    <input name="kd_barang_e" type="hidden" id="kd_barang_e" value="<?php echo $key->kd_barang ?>"/>
                    <input name="nofak_e" type="hidden" id="nofak_e" value="<?php echo $key->no_faktur_penjualan ?>"/>
                    <input style="text-align: center;" name="jml" type="text" id="jml" size="3" onkeypress="return isNumber(event)" value="<?php echo $key->jumlah ?>" />
                  </form>
                  </td>
                  <td align="center">
                  <form action="<?php echo base_url('kasir/edit_diskon_beli/') ?>" method="post">
                    <input name="dis_d" type="text" style="text-align: center;" id="dis_d" size="2" onkeypress="return isNumber(event)" value="<?php echo $key->diskonpersen ?>" readonly/>%
                  </form>
                  </td>
                  <td align="right"><?php echo number_format($key->sub_total_jual, 0, ',', '.') ?></td>
                </tr>
<?php
$tot_item += $key->jumlah;
$tot_belanja += $key->sub_total_jual;
?>
                <?php endforeach?>
              </tbody>
              <tr>
                <td colspan="4" align="right"><strong>Total</strong></td>
                <td align="center"><strong><?php echo $tot_item ?> Items</strong></td>
                <td></td>
                <td align="right"><strong>Rp. <?php echo number_format($tot_belanja, 0, ',', '.') ?></strong></td>
              </tr>
            </table>

            <!-- <table class="pull-right" style="width: 12%;">
              <tr>
                <td>
            <a class="btn btn-danger pull-right" href="<?php echo base_url('kasir/penjualan-pending/') ?>">Pending</a>
            </td>
            <td>
             <div>
                <form class="form-inline" action="<?php echo base_url('kasir/go_to_bayar/') ?>" method="post">
                <input type="hidden" name="nofak_bayar" id="nofak_bayar" value="<?php echo $faktur->no_faktur_penjualan ?>">
                <input type="hidden" name="total_belanja" id="total_belanja" value="<?php echo $belanja->tot_bel ?>">
                <input type="hidden" name="diskon_belanja" id="diskon_belanja" value="<?php echo $faktur->diskon ?>">
                <input type="hidden" name="diskon_ket" id="diskon_ket" value="<?php echo $faktur->ket_diskon ?>">
                <button type="submit" class="btn btn-success pull-right">Bayar</button>
                </form>
              </div>
              </td>
              </tr>
              </table> -->
           
            <table class="pull-right" style="width: 20%;">
              <!-- <form id="formD" name="formD" action="" method="post" enctype="multipart/form-data">
                 <script type="text/javascript" language="Javascript">
                 var total=0;
                 hargasatuan = document.formD.total.value;
                 document.formD.txtDisplay.value = hargasatuan;
                 jumlah = document.formD.cash.value;
                 document.formD.txtDisplay.value = jumlah;
                 function OnChange(value){
                 hargasatuan = document.formD.total.value;
                 jumlah = document.formD.cash.value;
                 total = hargasatuan -= jumlah;
                 document.formD.txtDisplay.value = total;
                 }
                 </script>

                <tr>
                    <th>Total Belanja :</th>
                    <th style="text-align:right;">
                    <input type="text" name="total" id="" value="" class="" style="text-align:right;margin-bottom:5px; width: 140px;"  onkeyup="OnChange(this.value)" onKeyPress="return isNumberKey(event)" ></th>
                </tr>
                <tr>
                    <th>Tunai :</th>
                    <th style="text-align:right;">
                    <input style="text-align: right; margin-bottom: 5px; width: 140px;" type="text" placeholder="masih proses" name="cash" onkeyup="OnChange(this.value)" onKeyPress="return isNumberKey(event)" >
                </tr>
                <tr>
                    <th>Kembalian :</th>
                     <?php 
                    $total= $belanja->tot_bel;
                    $tunai = 3;
                    $kembalian = $total-$tunai;
                    ?>
                    
                    <th style="text-align:right;"><input type="text" name="txtDisplay" id="" value="" style="text-align:right;margin-bottom:5px; width: 140px;" readonly></th>
                </tr>
                </form> -->
                <tr>
                  <th></th>
                  <th style="text-align:right;">
                <form class="form-inline" action="<?php echo base_url('kasir/go_to_bayar/') ?>" method="post">
                <input type="hidden" name="nofak_bayar" id="nofak_bayar" value="<?php echo $faktur->no_faktur_penjualan ?>">
                <input type="hidden" name="total_belanja" id="total_belanja" value="<?php echo $belanja->tot_bel ?>">
                <input type="hidden" name="diskon_belanja" id="diskon_belanja" value="<?php echo $faktur->diskon ?>">
                <input type="hidden" name="diskon_ket" id="diskon_ket" value="<?php echo $faktur->ket_diskon ?>">
                <button type="submit" class="btn btn-danger pull-right">Bayar</button>
                </form></th>
                </tr>
            </table>    
         

            </div>
            
          </div>

        </div>
    </div>
  </div>
  <div class="content-wrapper" style="margin-bottom: 20px">
    <div style="margin-left: 20px;margin-right: 20px">
      <div class="row">
        <!-- <div class="col-md-4">
          <div class="panel panel-default">
            <div class="panel-body">
              
              
              <div>
               <div class="form-horizontal">
                <div class="form-group">
                  <label class="control-label col-sm-4" for="kd_barang">Kode Barang</label>
                  <div class="col-sm-8">
                    <input type="hidden" name="nofak" id="nofak" value="<?php echo $faktur->no_faktur_penjualan ?>">
                    <input type="text" class="form-control" id="kd_barang" name="kd_barang" required>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-4" for="nm_barang">Nama Barang</label>
                  <div class="col-sm-8">
                    <input type="text" class="form-control" id="nm_barang" name="nm_barang" placeholder="Cari Nama Barang">
                  </div>
                </div>
              </div>
              </div>
              <hr>
              
              
            </div>
          </div>
        </div> -->


                 <!-- ============ MODAL ADD =============== -->
        <div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
            <div class="modal-dialog modal-lg">
            <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 class="modal-title" id="myModalLabel">Data Barang</h3>
            </div>
                <div class="modal-body" style="overflow:scroll;height:500px;">

                  <table class="table table-bordered table-condensed" style="font-size:11px;" id="mydata">
                    <thead>
                       <tr>
                          <th style="text-align:center;">No</th>
                          <th style="text-align:center;">Kode Barang</th>
                          <th style="text-align:center;">Nama Barang</th>
                          <th style="text-align:center;">Supplier</th>
                          <th style="text-align:center;">Kategori</th>
                          <th style="text-align:center;">Satuan</th>
                          <th style="text-align:center;">Harga Jual</th>
                          <th style="text-align:center;">Stok</font></th>
                          <th style="text-align:center;">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                   <!-- <?php 
                        $no=0; 
                        foreach ($stok->result() as $key): ?>
                <tr>
                  <td><?php echo $key->kd_barang ?></td>
                  <td><?php echo $key->nm_barang ?></td>
                  <td><?php echo $key->nm_supplier ?></td>
                  <td><?php echo $key->nm_kategori ?></td>
                  <td><?php echo $key->nm_satuan ?></td>
                  <td align="right"><?php echo number_format($key->hrg_beli, 0, ',', '.') ?></td>
                  <td align="center"><?php echo $key->stok ?></td>
                </tr>
                <?php endforeach?> -->
                    <?php 
                        $no=0;
                        foreach ($stok->result_array() as $key):
                            $no++;
                            $kd_barang=$key['kd_barang'];
                            $nm_barang=$key['nm_barang'];
                            $nm_supplier=$key['nm_supplier'];
                            $nm_kategori=$key['nm_kategori'];
                            $nm_satuan=$key['nm_satuan'];
                            $hrg_jual=$key['hrg_jual'];
                            $hrg_beli=$key['hrg_beli'];
                            $stok=$key['stok'];
                    ?>
                        <tr>
                            <td style="text-align:center;"><?php echo $no;?></td>
                            <td><?php echo $kd_barang;?></td>
                            <td><?php echo $nm_barang;?></td>
                            <td><?php echo $nm_supplier;?></td>
                            <td><?php echo $nm_kategori;?></td>
                            <td><?php echo $nm_satuan;?></td>
                            <td><?php echo 'Rp '.number_format($hrg_jual);?></td>
                            <td style="text-align:center;"><?php echo $stok;?></td>
                            <td style="text-align:center;">
                            <form action="<?php echo base_url('kasir/add_list_penjualan')?>" method="post">
                            <input type="hidden" name="nofaktur" id="nofak_bayar" value="<?php echo $faktur->no_faktur_penjualan ?>">  
                            <input type="hidden" id="kd_barang_add" name="kd_barang" value="<?php echo $kd_barang;?>">
                            <input type="hidden" id="nm_barang" name="nm_barang" value="<?php echo $nm_barang;?>">
                            <input type="hidden" name="nm_satuan" value="<?php echo $nm_satuan;?>">
                            <input type="hidden" name="harga" value="<?php echo $hrg_jual;?>">
                            <input type="hidden" name="hrg_beli" value="<?php echo $hrg_beli;?>">
                            <input type="hidden" name="stok" value="<?php echo $stok;?>">
                            <input type="hidden" name="jumlah" value="1">
                            <input type="hidden" name="diskon" value="0">
                            <input type="hidden" name="qty" value="1" required>
                                <button type="submit" class="btn btn-xs btn-info" title="Pilih"><span class="fa fa-edit"></span> Pilih</button>
                            </form>
                            </td>
                        </tr>
                   <?php endforeach;?>
                    </tbody>
                </table>          

                </div>

                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Tutup</button>
                    
                </div>
            </div>
            </div>
       

        <!--END MODAL-->

        <hr>

        

    </div>
    <!-- /.container -->



    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <script src="<?php echo base_url() ?>/assets/js/jquery-3.3.1.js"></script>
    <script src="<?php echo base_url() ?>/assets/js/jquery.dataTables.min.js"></script>
    <script src="<?php echo base_url() ?>/assets/js/bootstrap.js"></script>
    <script src="<?php echo base_url() ?>/assets/js/custom.js"></script>
    <script src="<?php echo base_url() ?>/assets/js/sweetalert.min.js"></script>
    <script src="<?php echo base_url() ?>/assets/js/toastr.min.js"></script>
    <script src="<?php echo base_url() ?>/assets/js/jquery-ui.min.js"></script>
    <script src="<?php echo base_url() ?>/assets/js/jquery.price_format.min.js"></script>
    <script>
      $('form').attr('autocomplete', 'off');
      $('input').attr('autocomplete', 'off');
      $("ul.nav li.dropdown").hover(function(){$(this).find(".dropdown-menu").stop(!0,!0).delay(100).fadeIn(500)},function(){$(this).find(".dropdown-menu").stop(!0,!0).delay(100).fadeOut(500)});
      var pesan="<?php echo $this->session->flashdata('msg'); ?>",error="<?php echo $this->session->flashdata('error'); ?>";pesan?(toastr.options={positionClass:"toast-top-right"},toastr.success(pesan)):error&&swal(error,"","error");

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
        $('#kd_barang').focus();
        $('#nm_barang').autocomplete({
          source: "<?php echo base_url('kasir/get_autocomplete/?'); ?>",
          select: function (event, ui) {
            $('[name="nm_barang"]').val(ui.item.label);
            $('[name="kd_barang"]').val(ui.item.kode);
            $('#kd_barang').focus();
          }
        });
    });

    $("#kd_barang").keypress(function(e){
        var kd_barang= $('#kd_barang').val();
        var nofak = $('#nofak').val();
        if(e.which==13){
          if (kd_barang) {
            window.top.location.href = "<?php echo base_url('kasir/cekbarang/') ?>"+nofak+"/"+kd_barang;
          }
          return false;
        }
    });

    // ---------------------------------------------------------------------------------


    $("#kd_barang_add").keypress(function(e){
        var kd_barang= $('#kd_barang').val();
        var nofak = $('#nofak').val();
        if(e.which==13){
          if (kd_barang) {
            window.top.location.href = "<?php echo base_url('kasir/cekbarang/') ?>"+nofak+"/"+kd_barang;
          }
          return false;
        }
    });

    // ------------------------------------------------------------------------------------

    function isNumber(evt) {
        evt = (evt) ? evt : window.event;
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            return false;
        }
      return true;
    }

    $(function(){
        $('#diskon').priceFormat({
                prefix: '',
                centsLimit: 0,
                thousandsSeparator: '.'
        });
    });
    </script>
<!-- -------------------------------------------------------- -->
 <script type="text/javascript">
        $(document).ready(function() {
            $('#mydata').DataTable();
        } );
    </script>

</body>
</html>