<div class="content-body">
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-sm-6 p-md-0">
                <div class="welcome-text">
                    <h4>Tambah Kelas</h4>
                    <span class="ml-1">Form Tambah Kelas</span>
                </div>
            </div>
            <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">Kelas</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">Tambah Kelas</a></li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <form action="<?= base_url('home/aksi_tambah_kelas') ?>" method="POST">
                            <div class="form-group">
                                <label for="Kelas">Nama Kelas</label>
                                <input type="text" name="nama_kelas" id="Kelas" class="form-control" placeholder="Masukkan Nama Kelas" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Tambah Kelas</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
