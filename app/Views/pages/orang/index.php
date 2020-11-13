<?= $this->extend('template/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
	<div class="row my-4">
		<div class="col">
			<h1>Data Orang</h1>
		</div>
		<div class="col-auto ml-auto mt-2 add-orang">
			<a href="/orang/create" role="button" class="btn btn-first"><i class="fa fa-plus"></i> <i class="fa fa-user"></i></a>
		</div>
	</div>

	<div class="row">
		<div class="col tb-search">
			<form action="" method="POST">
				<div class="input-group mb-3">
					<input type="text" value="<?= old('keyword') ? old('keyword') : ''; ?>" name="keyword" class="form-control klik" placeholder="Search" aria-label="Recipient's username" aria-describedby="button-addon2">
					<div class="input-group-append">
						<button class="btn btn-first" type="submit" name="submit" id="button-addon2"><i class="fa fa-search"></i> </button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<div class="row">
		<div class="col">
			<?php if (session()->getFlashdata('pesan')) : ?>
				<div class="alert alert-success" role="alert">
					<?= session()->getFlashdata('pesan'); ?>
				</div>
			<?php endif; ?>
		</div>
	</div>

	<div class="row">
		<div class="col table-responsive">
			<table class="table table-borderless">
				<thead class="thead-light table-custom">
					<tr>
						<th scope="col" style="text-align: center;">#</th>
						<th scope="col" style="text-align: center;">Foto</th>
						<th scope="col">Nama</th>
						<!-- <th scope="col">Alamat</th>
							<th scope="col">No. Telp</th> -->
						<th scope="col" style="text-align: center;">Info</th>
					</tr>
				</thead>
				<tbody>
					<?php $i = 5 * $currentPage - 4 ?>
					<?php foreach ($orang as $o) : ?>
						<tr class="tr-hover table-orang">
							<td scope="row" class="th-nomor"><?= $i++; ?></th>
							<td class="td-foto"><img src="/img/catpic-ava.jpg" width="60" alt=""></td>
							<td class="td-nama"><?= $o['nama']; ?></td>
							<td class="td-button">
								<button class="btn btn-primary btn-detail" data-id="<?= $o['id']; ?>" data-img="catpic-ava.jpg" data-nama="<?= $o['nama']; ?>" data-alamat="<?= $o['alamat']; ?>" data-telp="<?= $o['telp']; ?>">
									<i class="fa fa-info"></i>
								</button>
							</td>
						</tr>
					<?php endforeach; ?>
				</tbody>
			</table>
		</div>
	</div>
	<div class="d-flex justify-content-center">
		<?= $pager->links('orang', 'data_page') ?>

	</div>

</div>

<!-- Modal Info-->
<div class=" modal fade" id="infoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Informasi Lengkap</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="card card-custom">
								<img src="/img/default.png" class="card-img-top input-img" alt="Foto Profil">
								<div class="card-body detail-body">
									<h5 class="card-title input-nama"></h5>
									<p class="card-text input-alamat"></p>
								</div>
								<div class="detail-footer">
									<div class="detail-nomor">
										<p class="card-text input-telp"></p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button class="btn btn-danger" data-toggle="modal" data-target="#deleteModal"><i class="fa fa-trash" aria-hidden="true"></i></button>
				<a href="#" class="btn btn-primary card-link input-id"><i class="fa fa-pencil" aria-hidden="true"></i></a>
			</div>
		</div>
	</div>
</div>

<!-- Modal Delete -->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Hapus Data</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				Apakaha anda yakin ingin menghapus?
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
				<form class="input-id-del" action="#" method="POST" class="d-inline">
					<?= csrf_field(); ?>
					<input type="hidden" name="_method" value="DELETE">
					<button type="submit" class="btn btn-danger card-link">Delete</button>
				</form>
			</div>
		</div>
	</div>
</div>

<script>
	$(document).ready(function() {

		$('.btn-detail').on('click', function() {
			// Get data
			var id = $(this).data('id');
			var img = $(this).data('img');

			// Set data
			$('.input-id').attr("href", "/orang/edit/" + id);
			$('.input-img').attr("src", "/img/" + img);
			$('.input-id-del').attr("action", "/orang/" + id);
			$('.input-nama').text($(this).data('nama'));
			$('.input-alamat').text($(this).data('alamat'));
			$('.input-telp').text($(this).data('telp'));

			// Call Modal
			$("#infoModal").modal('show');
		});
	});
</script>

<?= $this->endSection(); ?>