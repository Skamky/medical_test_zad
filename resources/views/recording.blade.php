<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Записи') }}
        </h2>
    </x-slot>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">Дата Записи</th>
            <th scope="col">Имя</th>
            <th scope="col">Фамилия</th>
            <th scope="col">Отчество</th>
            <th scope="col">Специлаьность</th>
        </tr>
        </thead>
        <tbody>
        @foreach($data as $dat)
            <tr>
                <td>{{$dat->date}}</td>
                <td>{{$dat->name}}</td>
                <td>{{$dat->surname}}</td>
                <td>{{$dat->patronymic}}</td>
                <td>{{$dat->profession}}</td>
            </tr>
        @endforeach
        </tbody>
    </table >


    {{dump($data)}}

</x-app-layout>
