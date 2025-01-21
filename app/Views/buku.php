<div class="content-body">
    <div class="container-fluid">
        <!-- Filter, Search dan Tombol Tambah Buku dalam satu baris -->
        <div class="row mb-4">
    <div class="col-md-6">
        <select name="kategori" id="kategori" class="form-control">
            <option value="">Semua Kategori</option>
            <?php foreach ($kategori as $kat): ?>
                <option value="<?= $kat->id_kategori ?>" <?= (isset($_GET['kategori']) && $_GET['kategori'] == $kat->id_kategori) ? 'selected' : '' ?>>
                    <?= $kat->nama_kategori ?>
                </option>
            <?php endforeach; ?>
        </select>
    </div>
    <div class="col-md-4">
        <input type="text" id="search" class="form-control" placeholder="Cari berdasarkan nama atau kode buku">
    </div>
    <div class="col-md-2 text-right">
        <a href="<?= base_url('home/TambahBuku') ?>" class="btn btn-dark btn-block">Tambah Buku</a>
    </div>
</div>

<?php if (!$can_view_books): ?>
    <div class="alert alert-danger text-center">
        Anda tidak dapat melihat daftar buku. Silakan unggah buku baru terlebih dahulu.
    </div>
<?php else: ?>
    <div class="row" id="buku-list">
        <?php if (isset($buku) && count($buku) > 0): ?>
            <?php foreach ($buku as $bk): ?>
                <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
                    <a href="<?= base_url('home/DetailBuku/' . $bk->id_buku) ?>">
                        <div class="card">
                            <img 
                                src="<?= base_url('foto/' . $bk->foto_buku) ?>" 
                                class="card-img-top" 
                                alt="<?= $bk->nama_buku ?>" 
                                style="height: 250px; object-fit: cover;"
                            >
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
    </div>
<?php endif; ?>

        </div>
    </div>
</div>



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function(){
        // Function to fetch books based on category filter
        function fetchBooksByCategory() {
            var kategoriId = $('#kategori').val(); // Get selected category ID

            var url = '<?= base_url('home/getbukukategori') ?>';
            if (kategoriId) {
                url += '/' + kategoriId; // Append category ID if selected
            }

            $.ajax({
                url: url,
                type: 'GET',
                success: function(response) {
                    $('#buku-list').html(response); // Update the book list with the response
                }
            });
        }

        // Function to fetch books based on search term
        function fetchBooksBySearch() {
            var searchTerm = $('#search').val(); // Get search term from input field

            $.ajax({
                url: '<?= base_url('home/getbuku') ?>', // Use getbuku for search
                type: 'GET',
                data: { search: searchTerm }, // Send search term as a query parameter
                success: function(response) {
                    $('#buku-list').html(response); // Update the book list with the response
                }
            });
        }

        // Trigger fetchBooksByCategory on category dropdown change
        $('#kategori').on('change', function() {
            fetchBooksByCategory(); // Fetch books based on selected category
        });

        // Trigger fetchBooksBySearch on search button click
        $('#searchBtn').on('click', function() {
            fetchBooksBySearch(); // Fetch books based on search term
        });

        // Optionally, trigger fetchBooksBySearch on search input keyup (real-time search)
        $('#search').on('keyup', function() {
            fetchBooksBySearch(); // Fetch books as the user types
        });
    });
</script>
