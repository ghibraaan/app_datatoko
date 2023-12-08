<?php

    $koneksi = new mysqli("localhost","root","","data_toko");

    function rupiah($harga_satuan){
        $hasil_rupiah = "Rp " . number_format($harga_satuan,2,',',',');
        return $hasil_rupiah;
    }

?>