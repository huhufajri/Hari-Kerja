<?php
//menggunakan template basic
namespace app\components;
use DateTime;
use app\models\HariLibur; 

Class PublicHolydaysHelper {
	
	public static function hariTidakLibur($date_start,$date_end) {
		
		$liburNasional = static::liburNasional($date_start,$date_end) ;
		$start = new DateTime($awal);
		$end = new DateTime($akhir);
		//$interval = $start->diff($end);
		$jumlah = 0;
		if ($start == $end) {
			$jumlah = 1;
			return $jumlah;
		} else {
			while ($start <= $end) { 
				$start->modify('+1 day');
				$hariKerja = $start->format('w'); 
			
				if($hariKerja != 0 && $hariKerja != 6){ // 0 untuk minggu and 6 untuk sabtu berlaku untuk 5 hari kerja
					$jumlah++;  
				}
			}
			return $jumlah-1; //hari tidak libur
		}
	}

  // mengambil hari libur nasional di database
	 public static function liburNasional($date_start,$date_end) {
		$tahunAwal = date('Y', strtotime($date_start));
		$tahunAkhir = date('Y', strtotime($date_end));

		if ($tahunAwal == $tahunAkhir) {
			 return HariLibur::getTahun($tahunAkhir);
		} else {
			return HariLibur::getTahun($tahunAwal) + HariLibur::getTahun($tahunAkhir);
		}
	 }
	
}

?>
