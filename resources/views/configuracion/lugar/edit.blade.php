@extends ('layouts.admin')
@section ('contenido')
	<div class="row">
		<div class="col-lg-12 col-md-6 col-sm-6 col-xs-12">
			<h3>Editar lugar:  </h3>
			@if(count($errors)>0)
			<div class="alert alert-danger">
				<ul>
					@foreach($errors->all() as $error)
					<li>
						{{$error}}
					</li>
					@endforeach
				</ul>
			</div>
			@endif

		   {!!Form::model($lugar,['method'=>'PATCH','route'=>['lugar.update',$lugar->Id_evento]])!!}

			<div class="form-group">
				<label for="Pais">Pais</label>
				<input type="text" name="Pais" class="form-control" value="{{$lugar->Pais}}" placeholder="Pais">
			</div>
			<div class="form-group">
				<label for="Estado">Estado</label>
				<input type="text" name="Estado" class="form-control" value="{{$lugar->Estado}}" placeholder="Estado">
			</div>
			<div class="form-group">
				<label for="Codigo_Postal">Codigo_Postal</label>
				<input type="text" name="Codigo_Postal" class="form-control" value="{{$lugar->Codigo_Postal}}"placeholder="Codigo_Postal">
			</div>
			<div class="form-group">
				<label for="Calle">Calle</label>
				<input type="text" name="Calle" class="form-control" value="{{$lugar->Calle}}"placeholder="Calle">
			</div>
			<div class="form-group">
				<label for="Colonia">Colonia</label>
				<input type="text" name="Colonia" class="form-control" value="{{$lugar->Colonia}}" placeholder="Colonia">
			</div>
			<div class="form-group">
				<label for="Banda">Banda</label>
				<input type="text" name="Banda" class="form-control" value="{{$banda->Nombre}}" placeholder="Banda">
			</div>
				<div class="form-group">
				<button class="btn btn-primary" type="submit">Guardar</button>
				<button class="btn btn-danger" type="reset">Cancelar</button>

			</div>
			{!!Form::close()!!}




		</div>
	</div>

@endsection
