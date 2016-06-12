<table class="table table-bordered">
    <thead>
    <th>Nombre</th>
    <th>Acción</th>
    </thead>
    <tbody>
    @foreach($marks as $mark)
        <tr>
            <td>{{$mark->name}}</td>
            <td>
                <a href="#" OnClick='Mostrar({{$mark->id}});' data-toggle='modal' data-target='#myModal'>[Editar]</a>
                <a href="#">[Eliminar]</a></td>
        </tr>
    @endforeach
    </tbody>
</table>
<div class="text-center">
    {!!$marks->links()!!}
</div>