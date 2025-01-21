<div class="content-body">
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Tambah Buku</h4>
                    </div>
                    <div class="card-body">
                        <div class="basic-form">
                            <form class="form-valide-with-icon" action="<?= base_url('home/aksi_tambah_buku') ?>" method="post" enctype="multipart/form-data">
                                
                                <?php if (session()->getFlashdata('message')): ?>
                                    <div class="alert alert-success" role="alert">
                                        <?= session()->getFlashdata('message') ?>
                                    </div>
                                <?php elseif (session()->getFlashdata('error')): ?>
                                    <div class="alert alert-danger" role="alert">
                                        <?= session()->getFlashdata('error') ?>
                                    </div>
                                <?php endif; ?>



                                <!-- Nama Buku -->
                                <div class="form-group">
                                    <h6 class="text-label">Nama Buku</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-book"></i></span>
                                        </div>
                                        <input type="text" class="form-control" name="nama_buku" placeholder="Masukkan nama buku" required>
                                    </div>
                                </div>

                                <!-- Pengarang -->
                                <div class="form-group">
                                    <h6 class="text-label">Pengarang</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-pencil-alt"></i></span>
                                        </div>
                                        <input type="text" class="form-control" name="pengarang" placeholder="Masukkan nama pengarang" required>
                                    </div>
                                </div>

                                <!-- Genre -->
                                <!-- Genre -->
                                <div class="form-group">
    <h6 class="text-label">Genre</h6>
    <div class="row">
        <?php foreach ($genre as $g): ?>
            <div class="col-md-4">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="genre[]" value="<?= $g->nama_genre ?>" id="genre-<?= $g->id_genre ?>">
                    <label class="form-check-label" for="genre-<?= $g->id_genre ?>">
                        <?= $g->nama_genre ?>
                    </label>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</div>



                                <!-- Penerbit -->
                                <div class="form-group">
                                    <h6 class="text-label">Penerbit</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-building"></i></span>
                                        </div>
                                        <input type="text" class="form-control" name="penerbit" placeholder="Masukkan nama penerbit" required>
                                    </div>
                                </div>

                                <!-- Tahun Terbit -->
                                <div class="form-group">
                                    <h6 class="text-label">Tahun Terbit</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                        </div>
                                        <input type="date" class="form-control" name="tahun_terbit" placeholder="Masukkan tahun terbit" required>
                                    </div>
                                </div>

                                <!-- File Buku -->
                                <div class="form-group">
                                    <h6 class="text-label">File Buku</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-file"></i></span>
                                        </div>
                                        <input type="file" class="form-control" name="file_buku" accept=".pdf, .epub, .mobi" required>
                                    </div>
                                </div>

                                <!-- Foto Buku -->
                                <div class="form-group">
                                    <h6 class="text-label">Foto Buku</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-image"></i></span>
                                        </div>
                                        <input type="file" class="form-control" name="foto_buku" accept="image/*" required>
                                    </div>
                                </div>

                                <!-- Kategori -->
                                <div class="form-group">
                                    <h6 class="text-label">Kategori</h6>
                                    <select class="form-control" name="kategori" required>
                                        <option value="">Pilih Kategori</option>
                                        <?php foreach ($kategori as $kat): ?>
                                            <option value="<?= $kat->id_kategori ?>"><?= $kat->nama_kategori ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>

                                <!-- Submit Button -->
                                <button type="submit" class="btn btn-primary">Tambah Buku</button>
                                <button type="button" class="btn btn-light">Batal</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
