<?php if (isset($buku) && count($buku) > 0): ?>
    <?php foreach ($buku as $bk): ?>
        <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
            <a href="<?= base_url('home/DetailBuku/' . $bk->id_buku) ?>">
                <div class="card">
                    <!-- Gambar Buku -->
                    <img src="<?= base_url('foto/' . $bk->foto_buku) ?>" class="card-img-top" alt="<?= $bk->nama_buku ?>" style="height: 250px; object-fit: cover;">
                    <div class="card-body text-center">
                        <h5 class="card-title"><?= $bk->nama_buku ?></h5>
                    </div>
                </div>
            </a>
        </div>
    <?php endforeach; ?>
<?php else: ?>
    <div class="col-12">
        <div class="alert alert-warning text-center">
            Tidak ada buku yang tersedia saat ini.
        </div>
    </div>
<?php endif; ?>
