<?php

namespace App\Controllers;
use CodeIgniter\Models\Controller;
use App\Models\M_z;

class Home extends BaseController
{
	public function index()
	{
        $model = new M_z();
        $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        if (session()->get('id') > 0) {
		echo view('header');
		echo view('menu',$data);
		echo view('footer');
        }else{
            return redirect()->to('home/login');
        }
	}

	private function log_activity($activity)
    {
		$model = new M_z();
        $data = [
            'id_user'    => session()->get('id'),
            'activity'   => $activity,
			'timestamp' => date('Y-m-d H:i:s'),
			'delete' => Null
        ];

        $model->tambah('activity', $data);
    }

	public function login(){
        $model = new M_z();
        $where5 = array('id_setting' => 1);
        $data['setting'] = $model->getwhere('setting', $where5);
		echo view('header', $data);
		echo view('login');
	}

	public function generateCaptcha()
{
    // Create a string of possible characters
    $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    $captcha_code = '';
    
    // Generate a random CAPTCHA code with letters and numbers
    for ($i = 0; $i < 6; $i++) {
        $captcha_code .= $characters[rand(0, strlen($characters) - 1)];
    }
    
    // Store CAPTCHA code in session
    session()->set('captcha_code', $captcha_code);
    
    // Create an image for CAPTCHA
    $image = imagecreate(120, 40); // Increased size for better readability
    $background = imagecolorallocate($image, 200, 200, 200);
    $text_color = imagecolorallocate($image, 0, 0, 0);
    $line_color = imagecolorallocate($image, 64, 64, 64);
    
    imagefilledrectangle($image, 0, 0, 120, 40, $background);
    
    // Add some random lines to the CAPTCHA image for added complexity
    for ($i = 0; $i < 5; $i++) {
        imageline($image, rand(0, 120), rand(0, 40), rand(0, 120), rand(0, 40), $line_color);
    }
    
    // Add the CAPTCHA code to the image
    imagestring($image, 5, 20, 10, $captcha_code, $text_color);
    
    // Output the CAPTCHA image
    header('Content-type: image/png');
    imagepng($image);
    imagedestroy($image);
}


public function aksi_login()
{
    // Periksa koneksi internet
    if (!$this->checkInternetConnection()) {
        // Jika tidak ada koneksi, cek CAPTCHA gambar
        $captcha_code = $this->request->getPost('captcha_code');
        if (session()->get('captcha_code') !== $captcha_code) {
            session()->setFlashdata('toast_message', 'Invalid CAPTCHA');
            session()->setFlashdata('toast_type', 'danger');
            return redirect()->to('home/login');
        }
    } else {
        // Jika ada koneksi, cek Google reCAPTCHA
        $recaptchaResponse = trim($this->request->getPost('g-recaptcha-response'));
        $secret = '6LeKfiAqAAAAAFkFzd_B9MmWjX76dhdJmJFb6_Vi'; // Ganti dengan Secret Key Anda
        $credential = array(
            'secret' => $secret,
            'response' => $recaptchaResponse
        );

        $verify = curl_init();
        curl_setopt($verify, CURLOPT_URL, "https://www.google.com/recaptcha/api/siteverify");
        curl_setopt($verify, CURLOPT_POST, true);
        curl_setopt($verify, CURLOPT_POSTFIELDS, http_build_query($credential));
        curl_setopt($verify, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($verify, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($verify);
        curl_close($verify);

        $status = json_decode($response, true);

        if (!$status['success']) {
            session()->setFlashdata('toast_message', 'Captcha validation failed');
            session()->setFlashdata('toast_type', 'danger');
            return redirect()->to('home/login');
        }
    }

    // Proses login seperti biasa
    $u = $this->request->getPost('username');
    $p = $this->request->getPost('password');

    $where = array(
        'username' => $u,
        'password' => md5($p),
    );
    $model = new M_z;
    $cek = $model->getWhere('user', $where);

    if ($cek) {
        // $this->log_activitys('User Mel$where5 = array('id_setting' => 1);
        session()->set('nama', $cek->username);
        session()->set('id', $cek->id_user);
        session()->set('level', $cek->level);
        return redirect()->to('home/');
    } else {
        session()->setFlashdata('toast_message', 'Invalid login credentials');
        session()->setFlashdata('toast_type', 'danger');
        return redirect()->to('home/login');
    }
}

public function checkInternetConnection()
{
    $connected = @fsockopen("www.google.com", 80);
    if ($connected) {
        fclose($connected);
        return true;
    } else {
        return false;
    }
}

public function logout()
{
    // $this->log_activity('User Logout');
    session()->destroy();
    return redirect()->to('home/login');
}

public function aksi_t_folder(){
    $model = new M_z();
    $nama = $this->request->getPost('nama_folder');
    $level = $this->request->getPost('level');
    $file = $this->request->getFile('icon_gambar');

    if ($file && $file->isValid()) {
        // Panggil fungsi upload untuk meng-upload file
        $uploadedFileName = $file->getName();
        $model->upload2($file);  // Upload the file
    }
    $data = [
        'nama_folder' => $nama, 
        'level' => $level, 
        'icon' => $uploadedFileName
    ];

    $model->tambah('folder', $data);
    return redirect()->to('home/Folder_Dokumen');
}



public function updateMenuVisibilityAjax()
{
    // Get data from the AJAX request
    $menu = $this->request->getPost('menu'); // e.g., 'data', 'dashboard'
    $level = $this->request->getPost('level'); // e.g., 1, 2, 3
    $visibility = $this->request->getPost('visibility'); // 1 or 0

    // Logging the data received from AJAX request
    log_message('debug', 'Received data from AJAX - Menu: ' . $menu . ', Level: ' . $level . ', Visibility: ' . $visibility);

    // Prepare data for the update
    $updateData = [$menu => $visibility];
    $whereCondition = ['level' => $level];

    // Logging the prepared data for the update
    log_message('debug', 'Update Data: ' . json_encode($updateData));
    log_message('debug', 'Where Condition: ' . json_encode($whereCondition));

    // Initialize the model
    $menuModel = new M_z();

    // Call the model method to update the menu visibility
    $result = $menuModel->updateMenuVisibility('menu', $updateData, $whereCondition);

    // Check if the update was successful and log the result
    if ($result) {
        log_message('debug', 'Menu visibility updated successfully.');
        return $this->response->setJSON(['status' => 'success', 'message' => 'Menu visibility updated successfully.']);
    } else {
        log_message('error', 'Failed to update menu visibility.');
        return $this->response->setJSON(['status' => 'error', 'message' => 'Failed to update menu visibility.']);
    }
}

public function aksi_edit_website()
{
    // Load the model that interacts with your settings
    $model = new M_z(); // Replace M_p with the actual model name

    // Retrieve the settings from the database
    $where5 = array('id_setting' => 1);
    $setting = $model->getwhere('setting',$where5); // Assuming you have a method to get current settings

    // Get the name from the request
    $name = $this->request->getPost('name');

    $icon = $this->request->getFile('icon');

    // Array to hold image names
    $images = [];

    // Check and upload icon
    if ($icon && $icon->isValid()) {
        $images['icon'] = $icon->getName();
        $model->uploadimages($icon); // Call uploadimages from the model
    } else {
        // Keep the existing icon name if no new file is uploaded
        $images['icon'] = $setting->logo;
    }



    // Update the settings in the database with the new image names and the new name
    $model->updateSettings($name, $images['icon']); // Corrected parameter usage

    return redirect()->to('home/Website'); // Redirect after processing
}

public function filteruserlog() {
    $model = new M_z(); // Make sure to replace with your actual model for logs
    $idUser = $this->request->getGet('id_user'); // Get the selected user ID from the query string

    // Fetch users for the filter dropdown
    $data['users'] = $model->tampil('user'); // Adjust this method based on how you retrieve users

    // Get logs based on user filter
    if ($idUser) {
        $where = array('activity.id_user' => $idUser, 'activity.delete' => Null);
        $data['log'] = $model->join1where1('activity','user','activity.id_User = user.id_user',$where); // Method to get logs for a specific user
    } else {
        $data['log'] = $model->join1('activity','user','activity.id_User = user.id_user'); // Fetch all logs if no user is selected
    }
    $data['logss'] = $model->join1('activity','user','activity.id_User = user.id_user'); // Fetch all logs if no user is selected
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        if ($data['menu']->datas == 1) {
    echo view('header',$data);
    echo view('menu',$data);
    echo view('activitylog', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function LogActivity(){
    $model = new M_z();
    $where1 = array('activity.delete' => null);
    $data['log'] = $model->join1where1('activity','user','activity.id_user = user.id_user',$where1);
    $data['menus'] = $model->tampil('menu');
    $data['users'] = $model->tampil('user');
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        $this->log_activity('User membuka Setting Website');
        if ($data['menu']->datamaster == 1) {
    echo view('header', $data);
    echo view('menu', $data);
    echo view('activitylog', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function Website(){
    if (session()->get('id') > 0) {
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        $this->log_activity('User membuka Setting Website');
    echo view('header', $data);
    echo view('menu', $data);
    echo view('setting', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function MenuManage(){
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->setting == 1) {
    $model = new M_z();
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $data['menus'] = $model->tampil('menu');
        $this->log_activity('User membuka Manage Menu');
    echo view('header', $data);
    echo view('menu', $data);
    echo view('menu_manage', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function Buku()
{
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->buku == 1) {
        

    // Ambil setting dari model
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $this->log_activity('User membuka Daftar Buku');

    // Ambil kategori dari model
    $where = array('deleted' => null);
    $data['kategori'] = $model->tampilwhere('kategori', $where);

    // Ambil data user termasuk kelas dan tanggal terakhir upload
    $where = array('id_user' => session()->get('id'));
    $data['user'] = $model->join1where1row('user', 'kelas', 'user.id_kelas = kelas.id_kelas', $where);

    // Periksa tanggal terakhir upload
    $tanggalTerakhirUpload = $data['user']->tanggal_terakhir_upload;

    if (empty($tanggalTerakhirUpload) || strtotime($tanggalTerakhirUpload) < strtotime('-1 month')) {
        $data['can_view_books'] = false; // Tidak boleh melihat buku
        $data['buku'] = []; // Kosongkan daftar buku
    } else {
        $data['can_view_books'] = true; // Boleh melihat buku
        $kategoriId = $this->request->getGet('kategori');
        if ($kategoriId) {
            $data['buku'] = $model->getbukukategori($kategoriId); // Ambil buku berdasarkan kategori
        } else {
            $where3 = array('deleted' => null);
            $data['buku'] = $model->tampilwhere('buku', $where3); // Ambil semua buku
        }
    }

    // Render view
    echo view('header', $data);
    echo view('menu', $data);
    echo view('Buku', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}



public function getbukukategori($id = null)
{
    $model = new M_z();
    $where = ['deleted' => null];

    if ($id) {
        $where['id_kategori'] = $id;
    }

    $search = $this->request->getGet('search'); // Get search input
    if ($search) {
        $model->like('nama_buku', $search)->orLike('kode_buku', $search);
    }

    $data['buku'] = $model->tampilwheres('buku', $where);
    return view('bukus', $data); // Return partial view
}


public function DetailBuku($id){
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->buku == 1) {
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    
    // Ambil setting dari model
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $this->log_activity('User membuka Detail Buku');
    
    // Ambil kategori dari model
    $where = array('deleted' => Null);
    $where2 = array('id_buku' => $id);
    $data['buku'] = $model->tampilwhere2Row('buku', $where, $where2);


    echo view('header', $data);
    echo view('menu', $data);
    echo view('detail', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}


public function getbuku()
{
    $model = new M_z();
    $where = ['deleted' => null];
    $search = $this->request->getGet('search'); // Ambil kata kunci pencarian dari query params

    // Pastikan ada kata kunci pencarian
    if ($search) {
        try {
            // Panggil method tampilwherelike dengan kedua kondisi pencarian
            $data['buku'] = $model->tampilwherelike('buku', $where, $search);
            return view('bukus', $data); // Render view dengan data buku
        } catch (\Exception $e) {
            // Log error
            log_message('error', 'Error fetching books: ' . $e->getMessage());
            return $this->response->setStatusCode(500, 'Internal Server Error');
        }
    } else {
        // Jika tidak ada pencarian, tampilkan semua buku
        try {
            $data['buku'] = $model->tampilwherelike('buku', $where, '');
            return view('bukus', $data);
        } catch (\Exception $e) {
            log_message('error', 'Error fetching books: ' . $e->getMessage());
            return $this->response->setStatusCode(500, 'Internal Server Error');
        }
    }
}


public function TambahBuku(){
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->buku == 1) {
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    
    // Ambil setting dari model
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $this->log_activity('User membuka Form Buku');
    
    // Ambil kategori dari model
    $where = array('deleted' => Null);
    $data['kategori'] = $model->tampilwhere('kategori', $where);
    $where = array('deleted' => Null);
    $data['genre'] = $model->tampilwhere('genre', $where);

    echo view('header', $data);
    echo view('menu', $data);
    echo view('tambahbuku', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}


public function aksi_tambah_buku()
{
    $model = new M_z();

    // Ambil data dari form
    $nama_buku = $this->request->getPost('nama_buku');
    $pengarang = $this->request->getPost('pengarang');
    $genres = $this->request->getPost('genre'); // Array genre dari form
    $penerbit = $this->request->getPost('penerbit');
    $tahun_terbit = $this->request->getPost('tahun_terbit');
    $kategori = $this->request->getPost('kategori');

    // Ubah array genre menjadi string
    $genre = is_array($genres) ? implode(', ', $genres) : '';

    // Mengambil file yang diunggah
    $file_buku = $this->request->getFile('file_buku');
    $foto_buku = $this->request->getFile('foto_buku');

    // Menyimpan file buku
    $fileBukuName = null;
    if ($file_buku && $file_buku->isValid()) {
        $fileBukuName = $file_buku->getName();
        $file_buku->move('foto', $fileBukuName);
    }

    // Menyimpan foto buku
    $fotoBukuName = null;
    if ($foto_buku && $foto_buku->isValid()) {
        $fotoBukuName = $foto_buku->getName();
        $foto_buku->move('foto', $fotoBukuName);
    }

    // Generate kode buku secara otomatis
    $lastBuku = $model->query("SELECT kode_buku FROM buku ORDER BY id_buku DESC LIMIT 1")->getRow();
    $lastNumber = 1;

    if ($lastBuku && preg_match('/^BKU(\d{6})$/', $lastBuku->kode_buku, $matches)) {
        $lastNumber = (int)$matches[1] + 1; // Ambil angka terakhir dan tambahkan 1
    }

    $kode_buku = 'BKU' . str_pad($lastNumber, 6, '0', STR_PAD_LEFT);

    // Menyusun data yang akan dimasukkan ke dalam database
    $data = [
        'kode_buku' => $kode_buku,
        'nama_buku' => $nama_buku,
        'pengarang' => $pengarang,
        'genre' => $genre, // Disimpan dalam bentuk string
        'penerbit' => $penerbit,
        'tahun_terbit' => $tahun_terbit,
        'id_kategori' => $kategori,
        'file_buku' => $fileBukuName,
        'foto_buku' => $fotoBukuName,
        'tanggal_upload' => date('Y-m-d H:i:s'),
        'id_user' => session()->get('id')
    ];

    $data2 = [
        'tanggal_terakhir_upload' => date('Y-m-d H:i:s')
    ];

    // Menambahkan data buku ke dalam tabel 'buku'
    $model->tambah('buku', $data);

    $where1 = ['id_user' => session()->get('id')];
    $data['user'] = $model->getwhere('user', $where1);

    $where2 = ['id_kelas' => $data['user']->id_kelas];
    $model->edit('kelas', $data2, $where2);

    // Mengalihkan ke halaman daftar buku setelah berhasil
    return redirect()->to('home/Buku');
}



public function Kategori(){
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->datamaster == 1) {
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    
    // Ambil setting dari model
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $this->log_activity('User membuka Kategori');
    
    // Ambil kategori dari model
    $where = array('deleted' => Null);
    $data['kategori'] = $model->tampilwhere('kategori', $where);


    echo view('header', $data);
    echo view('menu', $data);
    echo view('kategori', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function TambahKategori(){
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->datamaster == 1) {
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    
    // Ambil setting dari model
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $this->log_activity('User membuka Kategori');
    
    // Ambil kategori dari model
    $where = array('deleted' => Null);
    $data['kategori'] = $model->tampilwhere('kategori', $where);


    echo view('header', $data);
    echo view('menu', $data);
    echo view('tambahkategori', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function aksi_tambah_kategori(){
    $model = new M_z();
    
    // Ambil data dari form
    $kategori = $this->request->getPost('nama_kategori');


    // Menyusun data yang akan dimasukkan ke dalam database
    $data = [
        'nama_kategori' => $kategori,
        'created_at' => date('Y-m-d H:i:s')
    ];

    // Menambahkan data buku ke dalam tabel 'buku'
    $model->tambah('kategori', $data);

    // Mengalihkan ke halaman daftar buku setelah berhasil
    return redirect()->to('home/Kategori');
}

public function EditKategori($id){
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->datamaster == 1) {
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    
    // Ambil setting dari model
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $this->log_activity('User membuka Kategori');
    
    // Ambil kategori dari model
    $where = array('deleted' => Null);
    $where1 = array('id_kategori' => $id);
    $data['kategori'] = $model->tampilwhere2Row('kategori', $where, $where1);


    echo view('header', $data);
    echo view('menu', $data);
    echo view('editkategori', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function aksi_edit_kategori(){
    $model = new M_z();
    
    // Ambil data dari form
    $kategori = $this->request->getPost('nama_kategori');
    $id = $this->request->getPost('id');

    // Menyusun data yang akan dimasukkan ke dalam database
    $data = [
        'nama_kategori' => $kategori,
        'updated_at' => date('Y-m-d H:i:s')
    ];
$where = array('id_kategori' => $id);
    // Menambahkan data buku ke dalam tabel 'buku'
    $model->edit('kategori', $data, $where);

    // Mengalihkan ke halaman daftar buku setelah berhasil
    return redirect()->to('home/Kategori');
}

public function SDKategori($id){
    $model = new M_z();


    // Menyusun data yang akan dimasukkan ke dalam database
    $data = [

        'deleted' => date('Y-m-d H:i:s')
    ];
$where = array('id_kategori' => $id);
    // Menambahkan data buku ke dalam tabel 'buku'
    $model->edit('kategori', $data, $where);

    // Mengalihkan ke halaman daftar buku setelah berhasil
    return redirect()->to('home/Kategori');
}



public function SDLog($id){
    $model = new M_z();


    // Menyusun data yang akan dimasukkan ke dalam database
    $data = [

        'delete' => date('Y-m-d H:i:s')
    ];
$where = array('id_activity' => $id);
    // Menambahkan data buku ke dalam tabel 'buku'
    $model->edit('activity', $data, $where);

    // Mengalihkan ke halaman daftar buku setelah berhasil
    return redirect()->to('home/LogActivity');
}



public function Kelas(){
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->datamaster == 1) {
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    
    // Ambil setting dari model
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $this->log_activity('User membuka Kategori');
    
    // Ambil kategori dari model
    $where = array('deleted' => Null);
    $data['kelas'] = $model->tampilwhere('kelas', $where);


    echo view('header', $data);
    echo view('menu', $data);
    echo view('kelas', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function TambahKelas(){
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->datamaster == 1) {
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    
    // Ambil setting dari model
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $this->log_activity('User membuka Kategori');
    
    // Ambil kategori dari model
    $where = array('deleted' => Null);
    $data['kategori'] = $model->tampilwhere('kategori', $where);


    echo view('header', $data);
    echo view('menu', $data);
    echo view('tambahkelas', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function aksi_tambah_kelas(){
    $model = new M_z();
    
    // Ambil data dari form
    $kelas = $this->request->getPost('nama_kelas');


    // Menyusun data yang akan dimasukkan ke dalam database
    $data = [
        'nama_kelas' => $kelas,
        'created_at' => date('Y-m-d H:i:s')
    ];

    // Menambahkan data buku ke dalam tabel 'buku'
    $model->tambah('kelas', $data);

    // Mengalihkan ke halaman daftar buku setelah berhasil
    return redirect()->to('home/Kelas');
}

public function EditKelas($id){
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->datamaster == 1) {
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    
    // Ambil setting dari model
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $this->log_activity('User membuka Kategori');
    
    // Ambil kategori dari model
    $where = array('deleted' => Null);
    $where1 = array('id_kelas' => $id);
    $data['kelas'] = $model->tampilwhere2Row('kelas', $where, $where1);


    echo view('header', $data);
    echo view('menu', $data);
    echo view('editkelas', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function aksi_edit_kelas(){
    $model = new M_z();
    
    // Ambil data dari form
    $kelas = $this->request->getPost('nama_kelas');
    $id = $this->request->getPost('id');

    // Menyusun data yang akan dimasukkan ke dalam database
    $data = [
        'nama_kelas' => $kelas,
        'updated_at' => date('Y-m-d H:i:s')
    ];
$where = array('id_kelas' => $id);
    // Menambahkan data buku ke dalam tabel 'buku'
    $model->edit('kelas', $data, $where);

    // Mengalihkan ke halaman daftar buku setelah berhasil
    return redirect()->to('home/Kelas');
}

public function SDKelas($id){
    $model = new M_z();


    // Menyusun data yang akan dimasukkan ke dalam database
    $data = [

        'deleted' => date('Y-m-d H:i:s')
    ];
$where = array('id_kelas' => $id);
    // Menambahkan data buku ke dalam tabel 'buku'
    $model->edit('kelas', $data, $where);

    // Mengalihkan ke halaman daftar buku setelah berhasil
    return redirect()->to('home/Kelas');
}





public function User(){
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->datamaster == 1) {
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    
    // Ambil setting dari model
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $this->log_activity('User membuka Kategori');
    
    // Ambil kategori dari model
    $where = array('deleted' => Null);
    $data['user'] = $model->tampilwhere('user', $where);


    echo view('header', $data);
    echo view('menu', $data);
    echo view('user', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function RUser(){
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->datamaster == 1) {
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    
    // Ambil setting dari model
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $this->log_activity('User membuka Kategori');
    
    // Ambil kategori dari model
    $where = "deleted is not null";
    $data['user'] = $model->tampilwhere('user', $where);


    echo view('header', $data);
    echo view('menu', $data);
    echo view('ruser', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function TambahUser(){
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->datamaster == 1) {
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    
    // Ambil setting dari model
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $this->log_activity('User membuka Kategori');
    
    // Ambil kategori dari model
    $where = array('deleted' => Null);
    $data['kategori'] = $model->tampilwhere('kategori', $where);
    $where5 = array('deleted' => null);
    $data['kelas'] = $model->tampilwhere('kelas', $where5);

    echo view('header', $data);
    echo view('menu', $data);
    echo view('tambahuser', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function aksi_tambah_User() {
    $model = new M_z();
    
    // Ambil data dari form
    $user = $this->request->getPost('nama_user');
    $level = $this->request->getPost('level');
    $kelas = $this->request->getPost('kelas'); // ID Kelas, hanya untuk level "Siswa"

    // Set password default
    $password = md5('sph');
    
    // Menyusun data yang akan dimasukkan ke dalam database
    $data = [
        'username' => $user,
        'password' => $password,
        'level' => $level,
        'id_kelas' => ($level === 'Siswa') ? $kelas : null, // ID kelas hanya untuk level "Siswa"
        'created_at' => date('Y-m-d H:i:s')
    ];

    // Menambahkan data user ke dalam tabel 'user'
    $model->tambah('user', $data);

    // Mengalihkan ke halaman daftar user setelah berhasil
    return redirect()->to('home/User');
}

public function EditUser($id){
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->datamaster == 1) {
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    
    // Ambil setting dari model
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $this->log_activity('User membuka Kategori');
    
    // Ambil kategori dari model
    $where = array('deleted' => Null);
    $where1 = array('id_user' => $id);
    $data['user'] = $model->tampilwhere2Row('user', $where, $where1);
    $where5 = array('deleted' => null);
    $data['kelas'] = $model->tampilwhere('kelas', $where5);

    echo view('header', $data);
    echo view('menu', $data);
    echo view('edituser', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function aksi_edit_User() {
    $model = new M_z();
    
    // Ambil data dari form
    $user = $this->request->getPost('nama_user');
    $level = $this->request->getPost('level');
    $kelas = $this->request->getPost('kelas'); // Only for Siswa
    $id = $this->request->getPost('id');

    // Menyusun data yang akan dimasukkan ke dalam database
    $data = [
        'username' => $user,
        'level' => $level,
        'id_kelas' => ($level == 'Siswa') ? $kelas : null,  // If level is Siswa, update id_kelas
        'updated_at' => date('Y-m-d H:i:s')
    ];

    // If password is being updated
    $password = $this->request->getPost('password');
    if (!empty($password)) {
        $data['password'] = md5($password);  // Update password if provided
    }

    $where = ['id_user' => $id];

    // Menyimpan perubahan data user ke dalam database
    $model->edit('user', $data, $where);

    // Mengalihkan ke halaman daftar user setelah berhasil
    return redirect()->to('home/user');
}


public function SDUser($id){
    $model = new M_z();


    // Menyusun data yang akan dimasukkan ke dalam database
    $data = [

        'deleted' => date('Y-m-d H:i:s')
    ];
$where = array('id_user' => $id);
    // Menambahkan data buku ke dalam tabel 'buku'
    $model->edit('user', $data, $where);

    // Mengalihkan ke halaman daftar buku setelah berhasil
    return redirect()->to('home/User');
}

public function RDUser($id){
    $model = new M_z();


    // Menyusun data yang akan dimasukkan ke dalam database
    $data = [

        'deleted' => null
    ];
$where = array('id_user' => $id);
    // Menambahkan data buku ke dalam tabel 'buku'
    $model->edit('user', $data, $where);

    // Mengalihkan ke halaman daftar buku setelah berhasil
    return redirect()->to('home/RUser');
}



public function DataBuku(){
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->datamaster == 1) {
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    
    // Ambil setting dari model
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $this->log_activity('User membuka Kategori');
    
    // Ambil kategori dari model
    $where = array('deleted' => Null);
    $data['Buku'] = $model->tampilwhere('Buku', $where);


    echo view('header', $data);
    echo view('menu', $data);
    echo view('databuku', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function RBuku(){
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->datamaster == 1) {
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    
    // Ambil setting dari model
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $this->log_activity('User membuka Kategori');
    
    // Ambil kategori dari model
    $where = "deleted is not null";
    $data['Buku'] = $model->tampilwhere('Buku', $where);


    echo view('header', $data);
    echo view('menu', $data);
    echo view('rdatabuku', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function EditBuku($id){
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->datamaster == 1) {
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    
    // Ambil setting dari model
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $this->log_activity('User membuka Kategori');
    
    // Ambil kategori dari model
    $where = array('deleted' => Null);
    $where1 = array('id_buku' => $id);
    $data['buku'] = $model->tampilwhere2Row('buku', $where, $where1);
    $where5 = array('deleted' => null);
    $data['kategori'] = $model->tampilwhere('kategori', $where5);

    echo view('header', $data);
    echo view('menu', $data);
    echo view('editbuku', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function EditBukuUser($id){
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->buku == 1) {
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    
    // Ambil setting dari model
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $this->log_activity('User membuka Form Edit Buku');
    
    // Ambil kategori dari model
    $where = array('deleted' => Null);
    $where1 = array('id_buku' => $id);
    $data['buku'] = $model->tampilwhere2Row('buku', $where, $where1);
    $where5 = array('deleted' => null);
    $data['kategori'] = $model->tampilwhere('kategori', $where5);

    echo view('header', $data);
    echo view('menu', $data);
    echo view('editbukuuser', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function aksi_edit_buku() {
    $model = new M_z();
    
    // Ambil data dari form
    $id_buku = $this->request->getPost('id_buku');
    $kode_buku = $this->request->getPost('kode_buku');
    $nama_buku = $this->request->getPost('nama_buku');
    $pengarang = $this->request->getPost('pengarang');
    $genre = $this->request->getPost('genre');
    $penerbit = $this->request->getPost('penerbit');
    $tahun_terbit = $this->request->getPost('tahun_terbit');
    $kategori = $this->request->getPost('kategori');
    
    // Menyusun data yang akan diupdate
    $data = [
        'kode_buku' => $kode_buku,
        'nama_buku' => $nama_buku,
        'pengarang' => $pengarang,
        'genre' => $genre,
        'penerbit' => $penerbit,
        'tahun_terbit' => $tahun_terbit,
        'id_kategori' => $kategori,
        'updated_at' => date('Y-m-d H:i:s')
    ];

    // Menangani upload file buku (jika ada)
    $fileBuku = $this->request->getFile('file_buku');
    if ($fileBuku && $fileBuku->isValid()) {
        $newName = $fileBuku->getRandomName();
        $fileBuku->move('uploads/buku', $newName);
        $data['file_buku'] = 'foto/' . $newName;
    }

    // Menangani upload foto buku (jika ada)
    $fotoBuku = $this->request->getFile('foto_buku');
    if ($fotoBuku && $fotoBuku->isValid()) {
        $newName = $fotoBuku->getRandomName();
        $fotoBuku->move('uploads/foto_buku', $newName);
        $data['foto_buku'] = 'foto/' . $newName;
    }

    $where = ['id_buku' => $id_buku];

    // Menyimpan perubahan data buku ke dalam database
    $model->edit('buku', $data, $where);

    // Mengalihkan ke halaman daftar buku setelah berhasil
    return redirect()->to('home/DataBuku')->with('message', 'Buku berhasil diperbarui');
}

public function aksi_edit_buku_user() {
    $model = new M_z();
    
    // Ambil data dari form
    $id_buku = $this->request->getPost('id_buku');
    $kode_buku = $this->request->getPost('kode_buku');
    $nama_buku = $this->request->getPost('nama_buku');
    $pengarang = $this->request->getPost('pengarang');
    $genre = $this->request->getPost('genre');
    $penerbit = $this->request->getPost('penerbit');
    $tahun_terbit = $this->request->getPost('tahun_terbit');
    $kategori = $this->request->getPost('kategori');
    
    // Menyusun data yang akan diupdate
    $data = [
        'kode_buku' => $kode_buku,
        'nama_buku' => $nama_buku,
        'pengarang' => $pengarang,
        'genre' => $genre,
        'penerbit' => $penerbit,
        'tahun_terbit' => $tahun_terbit,
        'id_kategori' => $kategori,
        'updated_at' => date('Y-m-d H:i:s')
    ];

    // Menangani upload file buku (jika ada)
    $fileBuku = $this->request->getFile('file_buku');
    if ($fileBuku && $fileBuku->isValid()) {
        $newName = $fileBuku->getRandomName();
        $fileBuku->move('uploads/buku', $newName);
        $data['file_buku'] = 'foto/' . $newName;
    }

    // Menangani upload foto buku (jika ada)
    $fotoBuku = $this->request->getFile('foto_buku');
    if ($fotoBuku && $fotoBuku->isValid()) {
        $newName = $fotoBuku->getRandomName();
        $fotoBuku->move('uploads/foto_buku', $newName);
        $data['foto_buku'] = 'foto/' . $newName;
    }

    $where = ['id_buku' => $id_buku];

    // Menyimpan perubahan data buku ke dalam database
    $model->edit('buku', $data, $where);

    // Mengalihkan ke halaman daftar buku setelah berhasil
    return redirect()->to('home/BukuUser')->with('message', 'Buku berhasil diperbarui');
}


public function SDBuku($id){
    $model = new M_z();


    // Menyusun data yang akan dimasukkan ke dalam database
    $data = [

        'deleted' => date('Y-m-d H:i:s')
    ];
$where = array('id_buku' => $id);
    // Menambahkan data buku ke dalam tabel 'buku'
    $model->edit('buku', $data, $where);

    // Mengalihkan ke halaman daftar buku setelah berhasil
    return redirect()->to('home/DataBuku');
}

public function RDBuku($id){
    $model = new M_z();


    // Menyusun data yang akan dimasukkan ke dalam database
    $data = [

        'deleted' => null
    ];
$where = array('id_buku' => $id);
    // Menambahkan data buku ke dalam tabel 'buku'
    $model->edit('buku', $data, $where);

    // Mengalihkan ke halaman daftar buku setelah berhasil
    return redirect()->to('home/RBuku');
}

public function SDUBuku($id){
    $model = new M_z();


    // Menyusun data yang akan dimasukkan ke dalam database
    $data = [

        'deleted' => date('Y-m-d H:i:s')
    ];
$where = array('id_buku' => $id);
    // Menambahkan data buku ke dalam tabel 'buku'
    $model->edit('buku', $data, $where);

    // Mengalihkan ke halaman daftar buku setelah berhasil
    return redirect()->to('home/BukuUser');
}



public function BukuUser()
{
    $model = new M_z();
    $where6 = array('level' => session()->get('level'));
    $data['menu'] = $model->getwhere('menu', $where6);
   
    if ($data['menu']->buku == 1) {
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');

    // Ambil setting dari model
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $this->log_activity('User membuka Daftar Buku');

    // Ambil kategori dari model
    $where = array('deleted' => null);
    $data['kategori'] = $model->tampilwhere('kategori', $where);

    // Ambil data user termasuk kelas dan tanggal terakhir upload
    $where = array('id_user' => session()->get('id'));
    $data['user'] = $model->join1where1row('user', 'kelas', 'user.id_kelas = kelas.id_kelas', $where);

    // Periksa tanggal terakhir upload
    $tanggalTerakhirUpload = $data['user']->tanggal_terakhir_upload;

    if (empty($tanggalTerakhirUpload) || strtotime($tanggalTerakhirUpload) < strtotime('-1 month')) {
        $data['can_view_books'] = false; // Tidak boleh melihat buku
        $data['buku'] = []; // Kosongkan daftar buku
    } else {
        $data['can_view_books'] = true; // Boleh melihat buku
        $kategoriId = $this->request->getGet('kategori');
        if ($kategoriId) {
            $data['buku'] = $model->getbukukategori($kategoriId); // Ambil buku berdasarkan kategori
        } else {
            $where3 = array('deleted' => null);
            $where2 = array('id_user' => session()->get('id'));
            $data['buku'] = $model->tampilwhere2('buku', $where3, $where2); // Ambil semua buku
        }
    }

    // Render view
    echo view('header', $data);
    echo view('menu', $data);
    echo view('bukuuser', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}



public function getbukukategoriUser($id = null)
{
    $model = new M_z();
    $where = ['deleted' => null, 'id_user' => session()->get('id')]; // Tambahkan kondisi id_user
    
    if ($id) {
        $where['id_kategori'] = $id;
    }

    $search = $this->request->getGet('search'); // Get search input
    if ($search) {
        $model->like('nama_buku', $search)->orLike('kode_buku', $search);
    }

    // Menambahkan kondisi WHERE
    $data['buku'] = $model->tampilwheres('buku', $where);
    return view('bukus', $data); // Return partial view
}

public function getbukuuser()
{
    $model = new M_z();
    $where = ['deleted' => null, 'id_user' => session()->get('id')];
    $search = $this->request->getGet('search'); // Ambil kata kunci pencarian dari query params

    // Pastikan ada kata kunci pencarian
    if ($search) {
        try {
            // Panggil method tampilwherelike dengan kedua kondisi pencarian
            $data['buku'] = $model->tampilwherelike('buku', $where, $search);
            return view('bukus', $data); // Render view dengan data buku
        } catch (\Exception $e) {
            // Log error
            log_message('error', 'Error fetching books: ' . $e->getMessage());
            return $this->response->setStatusCode(500, 'Internal Server Error');
        }
    } else {
        // Jika tidak ada pencarian, tampilkan semua buku
        try {
            $data['buku'] = $model->tampilwherelike('buku', $where, '');
            return view('bukus', $data);
        } catch (\Exception $e) {
            log_message('error', 'Error fetching books: ' . $e->getMessage());
            return $this->response->setStatusCode(500, 'Internal Server Error');
        }
    }
}
}
