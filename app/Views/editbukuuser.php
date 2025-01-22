<div class="content-body">
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Edit Buku</h4>
                    </div>
                    <div class="card-body">
                        <div class="basic-form">
                            <form class="form-valide-with-icon" action="<?= base_url('home/aksi_edit_buku_user') ?>" method="post" enctype="multipart/form-data">

                                <?php if (session()->getFlashdata('message')): ?>
                                    <div class="alert alert-success" role="alert">
                                        <?= session()->getFlashdata('message') ?>
                                    </div>
                                <?php elseif (session()->getFlashdata('error')): ?>
                                    <div class="alert alert-danger" role="alert">
                                        <?= session()->getFlashdata('error') ?>
                                    </div>
                                <?php endif; ?>

                                <!-- Hidden Input for ID Buku -->
                                <input type="hidden" name="id_buku" value="<?= $buku->id_buku ?>">

                                <!-- Kode Buku -->
                                <div class="form-group">
                                    <h6 class="text-label">Kode Buku</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-bookmark"></i></span>
                                        </div>
                                        <input type="text" class="form-control" name="kode_buku" value="<?= $buku->kode_buku ?>" placeholder="Masukkan kode buku" required>
                                    </div>
                                </div>

                                <!-- Nama Buku -->
                                <div class="form-group">
                                    <h6 class="text-label">Nama Buku</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-book"></i></span>
                                        </div>
                                        <input type="text" class="form-control" name="nama_buku" value="<?= $buku->nama_buku ?>" placeholder="Masukkan nama buku" required>
                                    </div>
                                </div>

                                <!-- Pengarang -->
                                <div class="form-group">
                                    <h6 class="text-label">Pengarang</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-pencil-alt"></i></span>
                                        </div>
                                        <input type="text" class="form-control" name="pengarang" value="<?= $buku->pengarang ?>" placeholder="Masukkan nama pengarang" required>
                                    </div>
                                </div>

                                <!-- Genre -->
                                <div class="form-group">
                                    <h6 class="text-label">Genre</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-tags"></i></span>
                                        </div>
                                        <input type="text" class="form-control" name="genre" value="<?= $buku->genre ?>" placeholder="Masukkan genre buku" required>
                                    </div>
                                </div>

                                <!-- Penerbit -->
                                <div class="form-group">
                                    <h6 class="text-label">Penerbit</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-building"></i></span>
                                        </div>
                                        <input type="text" class="form-control" name="penerbit" value="<?= $buku->penerbit ?>" placeholder="Masukkan nama penerbit" required>
                                    </div>
                                </div>

                                <!-- Tahun Terbit -->
                                <div class="form-group">
                                    <h6 class="text-label">Tahun Terbit</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                        </div>
                                        <input type="date" class="form-control" name="tahun_terbit" value="<?= $buku->tahun_terbit ?>" required>
                                    </div>
                                </div>

                                <!-- File Buku -->
                                <div class="form-group">
                                    <h6 class="text-label">File Buku (kosongkan jika tidak diubah)</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-file"></i></span>
                                        </div>
                                        <input type="file" class="form-control" name="file_buku" accept=".pdf, .epub, .mobi">
                                    </div>
                                </div>

                                <!-- Foto Buku -->
                                <div class="form-group">
                                    <h6 class="text-label">Foto Buku (kosongkan jika tidak diubah)</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-image"></i></span>
                                        </div>
                                        <input type="file" class="form-control" name="foto_buku" accept="image/*">
                                    </div>
                                </div>

                                <!-- Kategori -->
                                <div class="form-group">
                                    <h6 class="text-label">Kategori</h6>
                                    <select class="form-control" name="kategori" required>
                                        <option value="">Pilih Kategori</option>
                                        <?php foreach ($kategori as $kat): ?>
                                            <option value="<?= $kat->id_kategori ?>" <?= $kat->id_kategori == $buku->id_kategori ? 'selected' : '' ?>>
                                                <?= $kat->nama_kategori ?>
                                            </option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>

                                <!-- Submit Button -->
                                <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                                <button type="button" class="btn btn-light">Batal</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
