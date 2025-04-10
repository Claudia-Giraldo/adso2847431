<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{$title}}</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@5" rel="stylesheet" type="text/css" />
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>

</head>

<body>
    <h1 class="text-4xl text-center my-10">{{$title}}</h1>

    <div class="card card-side bg-base-100 border w-2/3 mx-auto">
        <figure>
            <img class="max-w-sm rounded-lg shadow-2xl" src="{{ asset('images/' . $pet->image)}}"
                alt="{{ $pet->name}}" />
        </figure>
        <div class="card-body">
            <h2 class="card-title">{{ $pet->name}}</h2>
            <ul>
                <li>
                    <strong>Kind:</strong>
                    @if ($pet->kind == 'Dog')
                        <span class=" badge badge-info">{{ $pet->kind}}🐶</span>
                    @else
                        <span class="badge badge-success">{{ $pet->kind}}😺</span>
                    @endif
                </li>

                <li>
                    <strong>Breed:</strong>
                    {{ $pet->breed }}</span>
                </li>
                <li>
                    <strong>Location:</strong>
                    {{ $pet->location }}</span>
                </li>
                <li>
                    <strong>Age:</strong>
                    {{ $pet->age }}</span>
                </li>
                <li>
                    <strong>Weight:</strong>
                    {{ $pet->weight }}</span>
                </li>
                <li>
                    <strong>Descripcion:</strong>
                    {{ $pet->descripcion}}</span>
                </li>
            </ul>
            <a href="/view/blade" class="btn btn-outline btn-accent">Volver</a>
        </div>
    </div>
</body>
</html>