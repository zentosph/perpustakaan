<div class="content-body">
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-sm-6 p-md-0">
                <div class="welcome-text">
                    <h4>Daftar Buku</h4>
                    <span class="ml-1">Datatable</span>
                </div>
            </div>
            <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">Table</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">Buku</a></li>
                </ol>
            </div>
        </div>



        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example" class="display" style="min-width: 845px; color: black;">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Buku</th> <!-- Menampilkan nama Buku -->
                                        <th>Pengarang</th> <!-- Menampilkan pengarang Buku -->
                                        <th>Genre</th> <!-- Menampilkan genre Buku -->
                                        <th>Penerbit</th> <!-- Menampilkan penerbit Buku -->
                                        <th>Tahun Terbit</th> <!-- Menampilkan tahun terbit Buku -->
                                        <th>Tanggal Upload</th> <!-- Menampilkan tanggal upload Buku -->
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                    $no = 1; // Inisialisasi nomor
                                    foreach ($Buku as $record): ?>
                                    <tr class="tdcoy">
                                        <td><?= $no++ ?></td>
                                        <td><?= $record->nama_buku ?></td>
                                        <td><?= $record->pengarang ?></td>
                                        <td><?= $record->genre ?></td>
                                        <td><?= $record->penerbit ?></td>
                                        <td><?= $record->tahun_terbit ?></td>
                                        <td><?= $record->tanggal_upload ?></td>
                                        <td>
                                            <a href="<?= base_url('home/RDBuku/' . $record->id_buku) ?>" onclick="return confirm('Yakin ingin Restore Buku ini?')">
                                                <button class="btn btn-primary">
                                                    <i class="fa fa-refresh"></i>
                                                </button>
                                            </a>
                                        </td>
                                    </tr>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Buku</th>
                                        <th>Pengarang</th>
                                        <th>Genre</th>
                                        <th>Penerbit</th>
                                        <th>Tahun Terbit</th>
                                        <th>Tanggal Upload</th>
                                        <th>Aksi</th>
                                    </tr>
                                </tfoot>
                            </table>    
                        </div>
                    </div>
                </div>
            </div>
        </div>   
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="<?= base_url('vendor/global/global.min.js') ?>"></script>
<script src="<?= base_url('js/quixnav-init.js') ?>"></script>
<script src="<?= base_url('js/custom.min.js') ?>"></script>
<script src="<?= base_url('vendor/datatables/js/jquery.dataTables.min.js') ?>"></script>
<script src="<?= base_url('js/plugins-init/datatables.init.js') ?>"></script>

<script>
   var $jq = jQuery.noConflict();
$jq(document).ready(function() {
    var table = $jq('#example').DataTable();
});
</script>
