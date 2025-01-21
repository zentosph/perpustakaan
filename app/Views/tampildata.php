<style>
    .tdcoy > td {
        color: black;
    }

    .modal-body > p {
        color: black;
    }

    .status-label {
        padding: 5px 10px;
        border-radius: 5px;
        font-weight: bold;
        display: inline-block;
    }

    .status-label.pending {
        background-color: #f0ad4e; /* Orange */
        color: white;
    }

    .status-label.konfirmasi {
        background-color: #5bc0de; /* Light Blue */
        color: white;
    }

    .status-label.ditolak {
        background-color: #d9534f; /* Red */
        color: white;
    }

    .status-label.sedang-diproses {
        background-color: #0275d8; /* Blue */
        color: white;
    }

    .status-label.selesai {
        background-color: #5cb85c; /* Green */
        color: white;
    }

    .d-none {
    display: none !important;
}

</style>

<div class="content-body">
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-sm-6 p-md-0">
                <div class="welcome-text">
                    <h4>Websites</h4>
                    <span class="ml-1">Datatable</span>
                </div>
            </div>
            <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">Table</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">Datatable</a></li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example" class="display" style="min-width: 845px">
                                <thead>
                                    <tr>
                                        <th>Website Name</th>
                                        <th>Primary Color</th>
                                        <th>Secondary Color</th>
                                        <th>Harga</th>
                                        <th>Status</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($order as $website): ?>
                                    <tr class="tdcoy">
                                        <td><?= $website->website_name ?></td>
                                        <td><?= $website->primary_color ?></td>
                                        <td><?= $website->secondary_color ?></td>
                                        <td>
    <span class="harga-label" data-id="<?= $website->id_websites ?>">
        <?= $website->harga ? 'Rp. ' . number_format($website->harga, 0, ',', '.') : 'Harga Belum Ditentukan' ?>
    </span>
    <input type="number" class="form-control harga-input d-none" 
           data-id="<?= $website->id_websites ?>" 
           value="<?= $website->harga ?>" 
           placeholder="Masukkan harga">
</td>


                                        <td>
    <span class="status-label <?= strtolower(str_replace(' ', '-', $website->status_order)) ?>">
        <?= $website->status_order ?>
    </span>
</td>

<td>
    <?php if ($website->status_order === 'Pending' && session()->get('level') == 2): ?>
        <!-- If status is Pending and user level is 2 (can edit and delete) -->
        <a href="<?= base_url('home/editWebsite/' . $website->id_websites) ?>">
            <button class="btn btn-dark"><i class="fa fa-edit"></i></button>
        </a>
        <a href="<?= base_url('home/SDOrder/' . $website->id_websites) ?>">
            <button class="btn btn-danger"><i class="fa fa-trash"></i></button>
        </a>
    <?php elseif (session()->get('level') == 1): ?>
        <!-- If status is Verified and user level is 1 (can edit and delete) -->
        <a href="<?= base_url('home/editWebsite/' . $website->id_websites) ?>">
            <button class="btn btn-dark"><i class="fa fa-edit"></i></button>
        </a>
        <a href="<?= base_url('home/SDOrder/' . $website->id_websites) ?>">
            <button class="btn btn-danger"><i class="fa fa-trash"></i></button>
        </a>
    <?php else: ?>

    <?php endif; ?>
    
    <!-- View Details button to trigger modal -->
    <button class="btn btn-info" data-toggle="modal" data-target="#detailModal-<?= $website->id_websites ?>">
       <i class="fa fa-info"></i>
    </button>
</td>


                                    </tr>

                                    <!-- Modal for Viewing Details -->
                                    <div class="modal fade" id="detailModal-<?= $website->id_websites ?>" tabindex="-1" role="dialog" aria-labelledby="detailModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
    <div class="modal-content">
    <div class="modal-header">
        <h5 class="modal-title" id="detailModalLabel">Website Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <div class="modal-body">
        <p><strong>Pelanggan:</strong> <?= $website->username ?></p>
        <p><strong>No Telepon:</strong> <?= $website->no_telp ?></p>
        <p><strong>Harga:</strong> <?= $website->harga ?></p>
        <p><strong>Website Name:</strong> <?= $website->website_name ?></p>
        <p><strong>Primary Color:</strong> <?= $website->primary_color ?></p>
        <p><strong>Secondary Color:</strong> <?= $website->secondary_color ?></p>
        <p><strong>Website Type:</strong> <?= ucfirst($website->website_type) ?></p>
        <p><strong>Features:</strong> <?= $website->features ?></p>
        <p><strong>Additional Instructions:</strong> <?= $website->additional_instructions ?></p>
        <p><strong>Logo:</strong> <img src="<?= base_url('images/'. $website->logo) ?>" alt="Logo" width="50" height="50"></p>
        <p>
            <strong>Download Logo:</strong>
            <a href="<?= base_url('images/' . $website->logo) ?>" download class="btn btn-primary">Download Logo</a>
        </p>
        <p><strong>Created At:</strong> <?= $website->created_at ?></p>
    </div>

    <div class="modal-footer">
    <?php 
        // Check current status and define the next status
        $nextStatus = '';
        $buttonText = '';
        $rejectText = 'Tolak';  // Define text for the reject button
        $rejectLink = base_url('home/statustolak/' . $website->id_websites); // Link for rejection

        switch($website->status_order) {
            case 'Pending':
                $nextStatus = 'Konfirmasi';
                $buttonText = 'Verifikasi';
                break;
            case 'Konfirmasi':
                $nextStatus = 'Sedang Diproses';
                $buttonText = 'Proses';
                break;
            case 'Sedang Diproses':
                $nextStatus = 'Selesai';
                $buttonText = 'Selesaikan';
                break;
            case 'Selesai':
                $nextStatus = '';
                $buttonText = 'Selesai';
                break;
        }

        // Check if the user is level 1 and show the "Verifikasi" or other status-change button
        if (session()->get('level') == 1 && $nextStatus != ''): ?>
            <a href="<?= base_url('home/ubahstatus/' . $website->id_websites) ?>" class="btn btn-success">
                <?= $buttonText ?>
            </a>
        <?php endif; ?>

        <!-- Reject Button: Only show this for level 1 if the status is 'Pending' or 'Konfirmasi' -->
        <?php if (session()->get('level') == 1 && ($website->status_order == 'Pending' || $website->status_order == 'Konfirmasi')): ?>
            <a href="<?= $rejectLink ?>" class="btn btn-danger">
                <?= $rejectText ?>
            </a>
        <?php endif; ?>

    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
</div>
</div>



    </div>
</div>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Website Name</th>
                                        <th>Primary Color</th>
                                        <th>Secondary Color</th>
                                        <th>Harga</th>
                                        <th>Status</th>
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
<script src="<?=base_url('vendor/global/global.min.js')?>"></script>
<script src="<?=base_url('js/quixnav-init.js')?>"></script>
<script src="<?=base_url('js/custom.min.js')?>"></script>
<script src="<?=base_url('vendor/datatables/js/jquery.dataTables.min.js')?>"></script>
<script src="<?=base_url('js/plugins-init/datatables.init.js')?>"></script>
<script>
    $(document).ready(function () {
        // Handle input change for price
        $('.harga-input').on('change', function () {
            let harga = $(this).val(); // Get the entered price
            let id = $(this).data('id'); // Get the ID of the website

            // Validate harga input
            if (harga === '' || parseFloat(harga) <= 0) {
                alert('Harga harus lebih besar dari 0.');
                return;
            }

            // Send the data to the server
            $.ajax({
                url: '<?= base_url("home/updateHarga") ?>', // Server endpoint for updating price
                type: 'POST',
                data: {
                    id_websites: id,
                    harga: harga
                },
                success: function (response) {

                },
                error: function () {
                    alert('Terjadi kesalahan saat menghubungi server.');
                }
            });
        });
    });

    $(document).ready(function () {
    // Double-click to show input
    $(document).on('dblclick', '.harga-label', function () {
        <?php if (session()->get('level') == 1): ?> 
        const id = $(this).data('id');
        const $label = $(this);
        const $input = $label.siblings('.harga-input');

        $label.addClass('d-none'); // Hide the label
        $input.removeClass('d-none').focus(); // Show the input
        <?php endif; ?>
    });

    // Input blur or enter to save harga
    $(document).on('blur change', '.harga-input', function () {
        const $input = $(this);
        const id = $input.data('id');
        const harga = $input.val();
        const $label = $input.siblings('.harga-label');

        // Validate harga
        if (harga === '' || parseFloat(harga) <= 0) {
            alert('Harga harus lebih besar dari 0.');
            $input.addClass('d-none'); // Hide the input
            $label.removeClass('d-none'); // Show the label
            return;
        }

        // Update harga via AJAX
        $.ajax({
            url: '<?= base_url("home/updateHarga") ?>',
            type: 'POST',
            data: { id_websites: id, harga: harga },
            success: function (response) {
                // Update the label with the new harga
                $label.text('Rp. ' + parseFloat(harga).toLocaleString('id-ID', { minimumFractionDigits: 0 }));
                $input.addClass('d-none'); // Hide the input
                $label.removeClass('d-none'); // Show the label
            },
            error: function () {
                alert('Terjadi kesalahan saat menghubungi server.');
            }
        });
    });
});

</script>
