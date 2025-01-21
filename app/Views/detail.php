<div class="content-body">
    <div class="container-fluid">
        <!-- Book Detail Header -->
        <div class="row mb-4">
            <div class="col-12">
                <h2 class="text-center"><?= $buku->nama_buku ?></h2>
            </div>
        </div>

        <!-- Book Details -->
        <div class="row">
            <!-- Book Cover -->
            <div class="col-md-4 text-center">
                <img 
                    src="<?= base_url('foto/' . $buku->foto_buku) ?>" 
                    alt="<?= $buku->nama_buku ?>" 
                    style="max-width: 100%; height: auto; object-fit: cover; border: 1px solid #ddd; border-radius: 5px;"
                >
            </div>

            <!-- Book Information -->
            <div class="col-md-8">
                <table class="table table-bordered" style="color: black;">
                    <tr>
                        <th>Kode Buku</th>
                        <td><?= $buku->kode_buku ?></td>
                    </tr>
                    <tr>
                        <th>Nama Buku</th>
                        <td><?= $buku->nama_buku ?></td>
                    </tr>
                    <tr>
                        <th>Pengarang</th>
                        <td><?= $buku->pengarang ?></td>
                    </tr>
                    <tr>
                        <th>Genre</th>
                        <td><?= $buku->genre ?></td>
                    </tr>
                    <tr>
                        <th>Penerbit</th>
                        <td><?= $buku->penerbit ?></td>
                    </tr>
                    <tr>
                        <th>Tahun Terbit</th>
                        <td><?= $buku->tahun_terbit ?></td>
                    </tr>
                    <tr>
                        <th>File Buku</th>
                        <td>
                            <a href="<?= base_url('foto/' . $buku->file_buku) ?>" target="_blank" class="btn btn-primary btn-sm">
                                Download/View
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <th>Tanggal Upload</th>
                        <td><?= date('d-m-Y', strtotime($buku->tanggal_upload)) ?></td>
                    </tr>
                </table>
                
                <!-- Delete Button (Visible if id_user matches session id) -->

            </div>
        </div>

        <!-- Back Button -->
        <div class="row mt-4">
            <div class="col-12 text-center">
                <a href="<?= base_url('home/Buku') ?>" class="btn btn-secondary">
                    Kembali ke Daftar Buku
                </a>
                <?php if ($buku->id_user == session()->get('id')): ?>
    <a href="<?= base_url('home/SDUBuku/' . $buku->id_buku) ?>" class="btn btn-danger btn-sm" 
       onclick="return confirmDelete()">
        Delete
    </a>
<?php endif; ?>
            </div>
        </div>
    </div>
</div>

<script>
    function confirmDelete() {
        var confirmAction = confirm("Apakah Anda yakin ingin menghapus buku ini?");
        if (confirmAction) {
            return true; // Proceed with the delete action
        } else {
            return false; // Prevent the delete action
        }
    }
</script>
