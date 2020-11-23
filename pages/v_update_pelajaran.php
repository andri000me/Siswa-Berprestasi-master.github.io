<?php 
$kelas = mysqli_query($db, "select * from tbl_matpel left join tbl_pengguna on tbl_pengguna.id_pengguna = tbl_matpel.id_guru
                        WHERE tbl_matpel.id_matpel = '$_GET[id]'");
// echo mysqli_error($db);
?>  
<div class="bg-dark">
    <div class="container  m-b-30">
        <div class="row">
            <div class="col-12 text-white p-t-40 p-b-90">

                <h4 class=""> <span class="btn btn-white-translucent">
                    <i class="mdi mdi-table "></i></span> Update Pelajaran
                </h4>
            </div>
        </div>
    </div>
</div>
<div class="container  pull-up">
    <div class="row">
        <div class="col-6">
            <div class="card mb-3">
                <div class="card-body">
                <form method="post" action="" id="formUpdateSiswa">
                    <input type="hidden" name="ajaran" value="<?=$ajaran['id_ajaran']?>">
                    <?php while($row=mysqli_fetch_array($kelas)){?>
                        <div class="form-group">
                        <label for="nisn">Nama mata Pelajaran</label>
                        <input type="text" name="nama_pelajaran" class="form-control" required value="<?=$row['nama_pelajaran']?>">
                    </div>

                    <div class="form-group">
                        <label for="kelompok">Kelompok</label>
                        <select name="kelompok" class="form-control" required>
                            <option value="WAJIB" <?=$row['kelompok']=='WAJIB'?'required':''?>>WAJIB</option>
                            <option value="BKP" <?=$row['kelompok']=='BKP'?'required':''?>>BKP</option>
                            <option value="DPIB" <?=$row['kelompok']=='DPIB'?'required':''?>>DPIB</option>
                            <option value="TG" <?=$row['kelompok']=='TG'?'required':''?>>TG</option>
                            <option value="TITL" <?=$row['kelompok']=='TITL'?'required':''?>>TITL</option>
                              <option value="TPTU" <?=$row['kelompok']=='TPTU'?'required':''?>>TPTU</option>
                            <option value="TP" <?=$row['kelompok']=='TP'?'required':''?>>TP</option>
                              <option value="TPG" <?=$row['kelompok']=='TPG'?'required':''?>>TPG</option>
                            <option value="TKR" <?=$row['kelompok']=='TKR'?'required':''?>>TKR</option>
                              <option value="TSM" <?=$row['kelompok']=='TSM'?'required':''?>>TSM</option>
                            <option value="TSM" <?=$row['kelompok']=='TSM'?'required':''?>>TSM</option>
                              <option value="TSM" <?=$row['kelompok']=='TSM'?'required':''?>>TSM</option>
                            <option value="RPL" <?=$row['kelompok']=='RPL'?'required':''?>>RPL</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="nisn">Guru</label>
                        <select name="guru" id="" class="form-control">
                           <?=getListGuru($db, $row['id_guru'])?>
                        </select>
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-primary" name="update">Update</button>
                    </div>
                    </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</div>
<?php 
    if(isset($_POST['update'])) {

        $pelajaran = $_POST['nama_pelajaran'];
        $kelompok = $_POST['kelompok'];
        $guru = $_POST['guru'];

        $sql = "UPDATE tbl_matpel SET
                nama_pelajaran = '$pelajaran',
                kelompok = '$kelompok',
                id_guru ='$guru'
                WHERE id_matpel = '$_GET[id]'";
        if (mysqli_query($db, $sql)) {
            echo "<script>swal({
                title : 'Berhasil',
                text : 'Berhasil mengubah data pelajaran',
                icon : 'success'
            }).then(function(){
                document.location.href='".BASE_URL."/index.php?p=pelajaran';
            });
            </script>";
            
        } else {
            echo json_encode(
                array('status'=>400,
                'message'=>'Gagal menambahkan data pelajaran',
                'result'=>[],
                'error'=>mysqli_error($db))
            );
            // $_SESSION['error'] = "Gagal menambahkan data kelas";
        }   
    }
?>