# public-holydays
Yii2 helper untuk membantu menghitung hari kerja dengan cara mengurangi rentang hari dengan hari libur nasional dan weekend(sabtu dan minggu).

###Untuk menggunakannya
1. Buat tabel hari_libur di database yang sudah ada
1. copy models dan component

```php
    <?php   
    ...
    use app\components\ExHelper;
    ...
    echo ExHelper::hariTanpaLibur($tanggal_mulai, $tanggal_akhir);
    ...
    ?>
```


####Catatan
helper ini dibuat untuk yang bekerja 5 hari kerja. Jika ingin membuat menjadi 6 hari kerja dapat mengedit bagian.

    if(($hariKerja != 0 && $hariKerja != 6) ) {  // 0 untuk minggu and 6 untuk sabtu
    		$jumlah++;  
    }
