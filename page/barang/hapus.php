<?php

    include ('../../functions.php');
    $id_barang = $_GET ['id_barang'];
    $koneksi->query("delete from tb_barang where id_barang = '$id_barang'");

?>

<script type="text/javascript">
    window.location.href="barang.php";
</script>