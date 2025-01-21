<div class="content-body">
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-sm-6 p-md-0">
                <div class="welcome-text">
                    <h4>Daftar kelas</h4>
                    <span class="ml-1">Datatable</span>
                </div>
            </div>
            <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">Table</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">kelas</a></li>
                </ol>
            </div>
        </div>

        <!-- Tombol Tambah kelas -->
        <div class="row mb-3">
            <div class="col-md-3">
                <a href="<?= base_url('home/TambahKelas') ?>">
                    <button class="btn btn-primary">Tambah Kelas</button>
                </a>
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
                                        <th>kelas</th> <!-- Kolom untuk kelas -->
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                    $no = 1; // Inisialisasi nomor
                                    foreach ($kelas as $record): ?>
                                    <tr class="tdcoy">
                                        <td><?= $no++ ?></td>
                                        <td><?= $record->nama_kelas ?></td> <!-- Menampilkan nama kelas -->
                                        <td>
                                            <a href="<?= base_url('home/Editkelas/' . $record->id_kelas) ?>">
                                                <button class="btn btn-dark">
                                                    <i class="fa fa-edit"></i>
                                                </button>
                                            </a>
                                            <a href="<?= base_url('home/SDkelas/' . $record->id_kelas) ?>" onclick="return confirm('Yakin ingin menghapus kelas ini?')">
                                                <button class="btn btn-danger">
                                                    <i class="fa fa-trash"></i>
                                                </button>
                                            </a>
                                        </td>
                                    </tr>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>No</th>
                                        <th>kelas</th> <!-- Kolom untuk kelas -->
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
