<?php require('header.php') ?>
<?php require('koneksi.php') ?>

    <section class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="box box-primary">
        <!-- form start -->
    <form role="form" class="form-horizontal" action="modules/pembelian/proses.php?act=insert" method="POST" name="formpembelian">
          <div class="box-body">
           <div class="form-group">
              <label class="col-sm-2 control-label">Nama Pembeli</label>
              <div class="col-sm-5">
                <input type="text" class="form-control" name="id_pembelian" value="" readonly required>
              </div>
            </div>

            <div class="form-group">
              <label class="col-sm-2 control-label">Tanggal Pemesanan</label>
              <div class="col-sm-5">
                <input type="date" class="form-control" id="no_hp"  name="tgl_pesan" value="" readonly required>
              </div>
            </div>

            <div class="form-group">
              <label class="col-sm-2 control-label">No HP Pembeli</label>
              <div class="col-sm-5">
                <input type="number" class="form-control" id="no_hp"  name="tgl_pembelian" value="" readonly required>
              </div>
            </div>

            <hr>
            <div class="form-group">
              <label class="col-sm-2 control-label">Pilih Paket</label>
              <div class="col-sm-5">
                <select name="id_paket" id="id_paket" style="width: 200px;">
                  <option value=""></option>
                  <?php          
                  // Load file koneksi.php          
                  include "koneksi.php";                    
                  // Buat query untuk menampilkan semua data siswa          
                  $sql = $pdo->prepare("SELECT * FROM paket ORDER BY nama_paket");          $sql->execute(); 
                  // Eksekusi querynya                    
                  while($data = $sql->fetch()){ 
                  // Ambil semua data dari hasil eksekusi $sql 
                    echo "<option value='".$data['id_paket']."'>".$data['nama_paket']."</option>";}
                print_r($sql);die();
                ?>
              </div>
            </div>
            
            <div class="form-group">
              <label class="col-sm-2 control-label">Harga Tiket</label>
              <div class="col-sm-5">
                <input type="text" class="form-control" id="harga"  name="harga" onchange="subtotal()" value=""  required>
              </div>
            </div>

            <div class="form-group">
              <label class="col-sm-2 control-label">Jumlah Tiket</label>
              <div class="col-sm-5" id="jumlah_tiket_div">
                <input type="number" class="form-control" id="jumlah_tiket"  name="jumlah_tiket" required data-max="0" value="">
              </div>
            </div>

            <div class="form-group">
              <label class="col-sm-2 control-label">Subtotal</label>
              <div class="col-sm-5">
                <input type="text" class="form-control" id="subtotal"  name="subtotal" value=""  required>
              </div>
            </div>

            

            <div class="box-footer">
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <input type="submit" class="btn btn-primary btn-submit" name="simpan" value="Simpan">
                  <a href="?module=pembelian" class="btn btn-default btn-reset">Batal</a>
                </div>
              </div>
            </div><!-- /.box footer -->

            <!-- Modal Footer -->
            
          </div>
    </form>
      </div>
    </div><!-- /.box -->
  </div><!--/.col -->
</section>

        <?php require('footer.php') ?>