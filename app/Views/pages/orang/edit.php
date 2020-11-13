<?= $this->extend('template/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row my-4">
        <div class="col-md-8">
            <h1>Form Tambah Data</h1>
            <form action="/orang/update/<?= $orang['id']; ?>" method="POST">
                <?= csrf_field(); ?>
                <input type="hidden" value="<?= $orang['id']; ?>" name="id">

                <div class="form-group">
                    <label for="exampleFormControlInput1">Nama</label>
                    <input type="text" class="form-control <?= ($validation->hasError('nama')) ? 'is-invalid' : ''; ?>" value="<?= (old('nama')) ? old('nama') : $orang['nama']; ?>" id="nama" name="nama" placeholder="Nama" autofocus>
                    <div class="invalid-feedback">
                        <?= $validation->getError('nama'); ?>
                    </div>
                </div>

                <div class="form-group">
                    <label for="exampleFormControlInput1">Alamat</label>
                    <input type="text" class="form-control <?= ($validation->hasError('alamat')) ? 'is-invalid' : ''; ?>" value="<?= (old('alamat')) ? old('alamat') : $orang['alamat']; ?>" id="alamat" name="alamat" placeholder="Alamat">
                    <div class="invalid-feedback">
                        <?= $validation->getError('alamat'); ?>
                    </div>
                </div>

                <div class="form-group">
                    <label for="exampleFormControlInput1">No. Telp</label>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control <?= ($validation->hasError('telp')) ? 'is-invalid' : ''; ?>" value="<?= (old('telp')) ? old('telp') : $orang['telp']; ?>" id="telp" name="telp" placeholder="Nomor Telepon">
                        <div class="invalid-feedback">
                            <?= $validation->getError('telp'); ?>
                        </div>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Simpan</button>
                <a href="/orang" role="button" class="btn btn-light">Kembali</a>
            </form>
        </div>
    </div>
</div>
</div>
<?= $this->endSection(); ?>