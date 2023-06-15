<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Главная') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    {{ __("Добро пожаловать!") }}
                </div>
            </div>
        </div>
    </div>





    <h1>Заполните форму ниже что бы записаться к врачу </h1>
    <hr>
    <form action="/post" method="post">


        Выберите желаемую дату <input name="date" type="datetime-local">
        <br>
        Выбериете медика из списка
        <select name="medic">
            @foreach($medics as $medic)
                <option value="{{$medic->id}}" >
                    {{$medic->profession}}
                   {{$medic->name}}
                    {{$medic->surname}}
                   {{$medic->patronymic}}
                </option>
            @endforeach
        </select>
{{--        <button type="submit" >Отправить</button>--}}
        <br>
        <x-primary-button>Отправить</x-primary-button>
        @csrf
    </form>

    <hr>

    <h1 class="text-xl">Список Врачей</h1>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Имя</th>
            <th scope="col">Фамилия</th>
            <th scope="col">Отчество</th>
            <th scope="col">Специлаьность</th>
        </tr>
        </thead>
        <tbody>
        @foreach($medics as $medic)
            <tr>
                <td>{{$loop->iteration}}</td>
                <td>{{$medic->name}}</td>
                <td>{{$medic->surname}}</td>
                <td>{{$medic->patronymic}}</td>
                <td>{{$medic->profession}}</td>
            </tr>
        @endforeach
        </tbody>
    </table >

</x-app-layout>
