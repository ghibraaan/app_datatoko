<?php

include ('../../functions.php');
$id_hutang = $_GET ['id_hutang'];
$koneksi->query("delete from tb_hutang where id_hutang = '$id_hutang'");

?>

<script type="text/javascript">
    window.location.href="hutang.php";
</script>