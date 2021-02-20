<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kasir_model extends CI_Model {

	public function get_toko() {
		$query = $this->db->query("SELECT * FROM tabel_toko LIMIT 1");
		return $query->row();
	}

	public function getKategory() {
		$this->db->order_by('kd_kategori');
		return $this->db->get('tabel_kategori_barang');
	}

	public function cekKodeKategori($kode) {
		$query = $this->db->query("SELECT kd_kategori FROM tabel_kategori_barang WHERE kd_kategori='$kode'");
		return $query;
	}

	public function getSatuan() {
		$this->db->order_by('nm_satuan');
		return $this->db->get('tabel_satuan_barang');
	}

	public function cekKodeSatuan($kode) {
		$query = $this->db->query("SELECT kd_satuan FROM tabel_satuan_barang WHERE kd_satuan='$kode'");
		return $query;
	}

	public function getSupplier() {
		$this->db->order_by('kd_supplier');
		return $this->db->get('tabel_supplier');
	}

	public function cekKodeSupplier($kode) {
		$query = $this->db->query("SELECT kd_supplier FROM tabel_supplier WHERE kd_supplier='$kode'");
		return $query;
	}

	public function getProduk() {
		$this->load->library('datatables');
		$this->datatables->select('a.kd_barang,a.nm_barang,a.kd_satuan,a.kd_kategori,a.kd_supplier,a.hrg_jual,a.hrg_beli,a.kode_virtual,b.nm_kategori,c.nm_satuan,d.nm_supplier,a.estimasi_stok,a.modal_per_porsi');
		$this->datatables->from('tabel_barang AS a');
		$this->datatables->join('tabel_kategori_barang AS b', 'a.kd_kategori = b.kd_kategori', 'left');
		$this->datatables->join('tabel_satuan_barang AS c', 'a.kd_satuan = c.kd_satuan', 'left');
		$this->datatables->join('tabel_supplier AS d', 'a.kd_supplier = d.kd_supplier', 'left');
		$this->db->order_by('a.kd_kategori');
		$this->datatables->add_column('Aksi', '<a href="javascript:void(0);" class="edit_record" title="Edit data" data-kode="$1" data-nama="$2" data-satuan="$3" data-kategori="$4" data-supplier="$5" data-jual="$6" data-beli="$7" data-satuan="$8" data-porsi="$9"><i class="fa fa-pencil-square-o"></i></a> <a href="javascript:void(0);" class="hapus_record" title="Hapus data" data-kode="$1"><i class="fa fa-trash-o"></i></a>', 'kd_barang, nm_barang, kd_satuan, kd_kategori, kd_supplier, hrg_jual, hrg_beli, nm_satuan, estimasi_stok');
		return print_r($this->datatables->generate());
	}

	public function cekKodeBarang($kode) {
		return $this->db->query("SELECT kd_barang FROM tabel_barang WHERE kd_barang='$kode'");
	}

	public function getStok() {
		return $this->db->query("SELECT * FROM tabel_stok_toko,tabel_barang,tabel_kategori_barang,tabel_supplier,tabel_satuan_barang WHERE tabel_stok_toko.kd_barang=tabel_barang.kd_barang AND tabel_barang.kd_kategori=tabel_kategori_barang.kd_kategori AND tabel_barang.kd_supplier=tabel_supplier.kd_supplier AND tabel_barang.kd_satuan=tabel_satuan_barang.kd_satuan AND tabel_stok_toko.stok>0 ORDER BY tabel_barang.kd_barang ASC");
	}

	public function getStokAll() {
		return $this->db->query("SELECT * FROM tabel_stok_toko,tabel_barang,tabel_kategori_barang,tabel_supplier,tabel_satuan_barang WHERE tabel_stok_toko.kd_barang=tabel_barang.kd_barang AND tabel_barang.kd_kategori=tabel_kategori_barang.kd_kategori AND tabel_barang.kd_supplier=tabel_supplier.kd_supplier AND tabel_barang.kd_satuan=tabel_satuan_barang.kd_satuan ORDER BY tabel_barang.kd_barang ASC");
	}

	public function getStokAllEmpty() {
		return $this->db->query("SELECT * FROM tabel_stok_toko,tabel_barang,tabel_kategori_barang,tabel_supplier,tabel_satuan_barang WHERE tabel_stok_toko.kd_barang=tabel_barang.kd_barang AND tabel_barang.kd_kategori=tabel_kategori_barang.kd_kategori AND tabel_barang.kd_supplier=tabel_supplier.kd_supplier AND tabel_barang.kd_satuan=tabel_satuan_barang.kd_satuan AND tabel_stok_toko.stok=0 ORDER BY tabel_barang.kd_barang ASC");
	}

	public function getStokSort($kat) {
		return $this->db->query("SELECT * FROM tabel_stok_toko,tabel_barang,tabel_kategori_barang,tabel_supplier,tabel_satuan_barang WHERE tabel_stok_toko.kd_barang=tabel_barang.kd_barang AND tabel_barang.kd_kategori=tabel_kategori_barang.kd_kategori AND tabel_barang.kd_supplier=tabel_supplier.kd_supplier AND tabel_barang.kd_satuan=tabel_satuan_barang.kd_satuan AND tabel_kategori_barang.kd_kategori='" . $kat . "' ORDER BY tabel_barang.kd_barang ASC");
	}

	public function getStokEmpty($kat) {
		return $this->db->query("SELECT * FROM tabel_stok_toko,tabel_barang,tabel_kategori_barang,tabel_supplier,tabel_satuan_barang WHERE tabel_stok_toko.kd_barang=tabel_barang.kd_barang AND tabel_barang.kd_kategori=tabel_kategori_barang.kd_kategori AND tabel_barang.kd_supplier=tabel_supplier.kd_supplier AND tabel_barang.kd_satuan=tabel_satuan_barang.kd_satuan AND tabel_stok_toko.stok=0 AND tabel_kategori_barang.kd_kategori='" . $kat . "' ORDER BY tabel_barang.kd_barang ASC");
	}

	public function getStokMore($kat) {
		return $this->db->query("SELECT * FROM tabel_stok_toko,tabel_barang,tabel_kategori_barang,tabel_supplier,tabel_satuan_barang WHERE tabel_stok_toko.kd_barang=tabel_barang.kd_barang AND tabel_barang.kd_kategori=tabel_kategori_barang.kd_kategori AND tabel_barang.kd_supplier=tabel_supplier.kd_supplier AND tabel_barang.kd_satuan=tabel_satuan_barang.kd_satuan AND tabel_stok_toko.stok>0 AND tabel_kategori_barang.kd_kategori='" . $kat . "' ORDER BY tabel_barang.kd_barang ASC");
	}

	public function getStokMin() {
		return $this->db->query("SELECT * FROM tabel_stok_toko,tabel_barang,tabel_kategori_barang,tabel_supplier,tabel_satuan_barang WHERE tabel_stok_toko.kd_barang=tabel_barang.kd_barang AND tabel_barang.kd_kategori=tabel_kategori_barang.kd_kategori AND tabel_barang.kd_supplier=tabel_supplier.kd_supplier AND tabel_barang.kd_satuan=tabel_satuan_barang.kd_satuan AND tabel_stok_toko.stok<tabel_stok_toko.stok_min ORDER BY tabel_barang.kd_barang ASC");
	}
// --------------------------------------------------------------------------------------------------------------------------
	public function get_detail_produk($idbarang) {
		$hsl = $this->db->query("SELECT tabel_stok_toko.stok, 
										tabel_barang.nm_barang, 
										tabel_satuan_barang.nm_satuan, 
										tabel_barang.hrg_beli, 
										tabel_barang.hrg_jual, 
										tabel_kategori_barang.nm_kategori 
										FROM tabel_barang 
										LEFT JOIN tabel_stok_toko ON tabel_barang.kd_barang = tabel_stok_toko.kd_barang 
										LEFT JOIN tabel_kategori_barang ON tabel_barang.kd_kategori = tabel_kategori_barang.kd_kategori 
										LEFT JOIN tabel_satuan_barang ON tabel_barang.kd_satuan = tabel_satuan_barang.kd_satuan 
										WHERE tabel_barang.kd_barang='$idbarang'");
		if ($hsl->num_rows() > 0) {
			foreach ($hsl->result() as $data) {
				$hasil = array(
					'namaproduk' => $data->nm_barang,
					'stok' => $data->stok,
					'harga' => $data->hrg_jual,
					'kategori' => $data->nm_kategori,
					'harga_beli' => $data->hrg_beli,
					'satuan' => $data->nm_satuan,
				);
			}
		}
		return $hasil;
	}

	public function cek_stok_mutasi($kode) {
		return $this->db->query("SELECT * FROM tabel_stok_toko WHERE kd_barang='$kode'");
	}

	public function get_list($nofak) {
		return $this->db->select('tabel_rinci_penjualan.*')
			->where('tabel_rinci_penjualan.no_faktur_penjualan', $nofak)
			->get('tabel_rinci_penjualan')
			->result();
	}

	public function detail_faktur($nofak) {
		return $this->db->select('tabel_penjualan.*')
			->where('tabel_penjualan.no_faktur_penjualan', $nofak)
			->where('tabel_penjualan.selesai', '1')
			->get('tabel_penjualan')
			->row();
	}

	public function getProdukRetur($nofak, $kd_barang) {
		return $this->db->select('tabel_rinci_penjualan.*')
			->where('tabel_rinci_penjualan.no_faktur_penjualan', $nofak)
			->where('tabel_rinci_penjualan.kd_barang', $kd_barang)
			->get('tabel_rinci_penjualan');
	}

	public function getStokRetur($kd_barang) {
		return $this->db->query("SELECT * FROM tabel_stok_toko WHERE kd_barang='$kd_barang'");
	}

	public function dataTransaksiHariIni($tgl) {
		return $this->db->select('tabel_penjualan.*')
			->where('tabel_penjualan.tgl_penjualan', $tgl)
			->where('tabel_penjualan.selesai', '1')
			->order_by('no_faktur_penjualan')
			->get('tabel_penjualan');
	}

	public function dataPengeluaranHariIni($tgl) {
		return $this->db->select('tabel_biaya.*')
			->where('tabel_biaya.tgl', $tgl)
			->where('tabel_biaya.id_user', 'kasir')
			->order_by('id')
			->get('tabel_biaya');
	}

	public function dataPengeluaranHariIniAll($tgl) {
		return $this->db->select('tabel_biaya.*')
			->where('tgl', $tgl)
			->order_by('id')
			->get('tabel_biaya');
	}

	public function reprintStruk($nofaktur) {
		$this->db->where('no_faktur_penjualan', $nofaktur);
		return $this->db->get('tabel_penjualan');
	}

	public function getProdukDijual($nofaktur) {
		$this->db->where('no_faktur_penjualan', $nofaktur);
		return $this->db->get('tabel_rinci_penjualan');
	}

	public function getRekapHarian($tgl_sort) {
		$this->db->where('selesai', '1');
		$this->db->where('tgl_penjualan', $tgl_sort);
		return $this->db->get('tabel_penjualan');
	}

	public function dataBarangMasuk($tgl) {
		$this->db->join('tabel_barang AS b', 'a.kode_barang = b.kd_barang', 'left');
		$this->db->join('tabel_stok_toko AS c', 'a.kode_barang = c.kd_barang', 'left');
		$this->db->where('a.waktu', $tgl);
		$this->db->where('a.publish', '1');
		return $this->db->get('tabel_kartu_stok AS a');
	}

	public function getNoFaktur($ymd) {
		$q = $this->db->query("SELECT MAX(RIGHT(no_faktur_penjualan,3)) AS id_max FROM tabel_penjualan WHERE substr(no_faktur_penjualan,6,6)='$ymd'");
		$kd = "";
		$kodeawal = "SS001";
		if ($q->num_rows() > 0) {
			foreach ($q->result() as $k) {
				$tmp = ((int) $k->id_max) + 1;
				$kd = sprintf("%03s", $tmp);
			}
		} else {
			$kd = "001";
		}
		return $kodeawal . $ymd . $kd;
	}

	public function getDataPenjualan($noresi, $username) {
		$this->db->where('no_faktur_penjualan', $noresi);
		$this->db->where('id_user', $username);
		$this->db->where('selesai', '0');
		return $this->db->get('tabel_penjualan');
	}

	public function getbarang($idbarang) {
		$this->db->where('kd_barang', $idbarang);
		return $this->db->get('tabel_barang');
	}

	public function cek_sudah_ada($idbarang, $nofaktur) {
		return $this->db->query("SELECT * FROM tabel_rinci_penjualan WHERE kd_barang='$idbarang' AND no_faktur_penjualan='$nofaktur'");
	}

	public function cek_jumlah_stok($idbarang) {
		return $this->db->query("SELECT * FROM tabel_stok_toko WHERE kd_barang='$idbarang'");
	}

	public function getListPenjualan($noresi) {
		return $this->db->query("SELECT * FROM tabel_rinci_penjualan WHERE no_faktur_penjualan='$noresi' ORDER BY id");
	}

	public function getTotalBelanja($noresi) {
		return $this->db->query("SELECT SUM(sub_total_jual) AS tot_bel FROM tabel_rinci_penjualan WHERE no_faktur_penjualan='$noresi'");
	}

	public function getPenjualanSelesai($nofaktur, $id_user) {
		$this->db->where('no_faktur_penjualan', $nofaktur);
		$this->db->where('id_user', $id_user);
		return $this->db->get('tabel_penjualan');
	}

	// public function getStok($kd_barang_item) {
	// 	return $this->db->query("SELECT MIN(tabel_stok_toko.stok) AS stok FROM tabel_stok_toko,tabel_barang WHERE tabel_barang.kd_barang=tabel_stok_toko.kd_barang AND tabel_barang.kd_barang='$kd_barang_item'");
	// }

	public function transaksiPending($id_user, $now, $before) {
		return $this->db->query("SELECT * FROM tabel_penjualan WHERE selesai='0' AND id_user='$id_user' AND tgl_penjualan BETWEEN '" . $before . "' AND  '" . $now . "' ORDER BY no_faktur_penjualan DESC");
	}

	public function getStokPorsi($kd_barang_item) {
		return $this->db->query("SELECT * FROM tabel_stok_toko WHERE kd_barang='$kd_barang_item'");
	}
}

/* End of file Kasir_model.php */
/* Location: ./application/models/Kasir_model.php */
