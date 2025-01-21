<div class="content-body">
    <div class="container-fluid">
        <div class="container">
            <h1>Manage User Menu Access</h1>
            <?php if (session()->getFlashdata('message')): ?>
                <div class="alert alert-success">
                    <?= session()->getFlashdata('message') ?>
                </div>
            <?php endif; ?>

            <form action="<?= base_url('home/updateUserMenuAccess') ?>" method="post">
                <div class="card mb-4">
                    <div class="card-header">
                        <h5>User Access for Menus</h5>
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>User Level</th>
                                    <th>Menu</th>
                                    <th>Access</th>
                                </tr>
                            </thead>
                            <tbody>
                                    <?php foreach ($menus as $menu): ?>
                                    <tr>
                                        <td><?= esc($menu->user_level) ?></td>
                                        <td><?= esc($menu->menu) ?></td>
                                        <td>
                                        <input type="checkbox" 
                                                   name="access[<?= $menu->id ?>]" 
                                                   value="1" 
                                                   <?= $menu->has_access == 1 ? 'checked' : '' ?> 
                                                   class="access-checkbox">
                                        </td>
                                    </tr>
                                    <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Save Changes</button>
            </form>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
    $('.access-checkbox').change(function() {
        const levelId = $(this).closest('tr').find('td:first').text().trim();
        const menuId = $(this).closest('tr').find('td:nth-child(2)').text().trim();
        const isChecked = $(this).is(':checked') ? 1 : 0;

        $.ajax({
            url: '<?= base_url('home/updateAccessAjax') ?>',
            method: 'POST',
            data: {
                level_id: levelId,
                menu_id: menuId,
                access: isChecked
            },
            success: function(response) {
                if (response.status === 'success') {
                    console.log(response.message);
                } else {
                    console.error(response.message);
                }
            },
            error: function(xhr, status, error) {
                console.error('An error occurred: ' + error);
            }
        });
    });
});
</script>