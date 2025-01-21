<div class="content-body">
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-sm-6 p-md-0">
                <div class="welcome-text">
                    <h4>Edit user</h4>
                    <span class="ml-1">Form Edit user</span>
                </div>
            </div>
            <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">user</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">Edit user</a></li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <form action="<?= base_url('home/aksi_edit_user') ?>" method="POST">
                            <div class="form-group">
                                <input type="hidden" value="<?=$user->id_user?>" name="id">
                                
                                <!-- Username -->
                                <label for="user">Nama user</label>
                                <input type="text" name="nama_user" id="user" class="form-control" placeholder="Masukkan Nama user" value="<?=$user->username?>" required>
                            </div>
                            
                            <!-- Level Dropdown -->
                            <div class="form-group">
                                <label for="level">Level</label>
                                <select name="level" id="level" class="form-control" required>
                                    <option value="Admin" <?= ($user->level == 'Admin') ? 'selected' : '' ?>>Admin</option>
                                    <option value="Petugas" <?= ($user->level == 'Petugas') ? 'selected' : '' ?>>Petugas</option>
                                    <option value="Siswa" <?= ($user->level == 'Siswa') ? 'selected' : '' ?>>Siswa</option>
                                </select>
                            </div>

                            <!-- Kelas Dropdown (only for 'Siswa') -->
                            <div class="form-group" id="kelasDropdown" style="<?= ($user->level == 'Siswa') ? 'display:block' : 'display:none' ?>">
                                <label for="kelas">Kelas</label>
                                <select name="kelas" id="kelas" class="form-control">
                                    <?php foreach ($kelas as $kelasOption): ?>
                                        <option value="<?= $kelasOption->id_kelas ?>" <?= ($user->id_kelas == $kelasOption->id_kelas) ? 'selected' : '' ?>><?= $kelasOption->nama_kelas ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>

                            <button type="submit" class="btn btn-primary">Edit user</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    // Show the kelas dropdown only if level is 'Siswa'
    document.getElementById('level').addEventListener('change', function() {
        var level = this.value;
        var kelasDropdown = document.getElementById('kelasDropdown');
        
        if (level == 'Siswa') {
            kelasDropdown.style.display = 'block';
        } else {
            kelasDropdown.style.display = 'none';
        }
    });
</script>
