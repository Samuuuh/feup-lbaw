@extends('layouts.app')

@section('content')
<div id="page-top" class="page-margin question-page">
    <article class="question card">
        <div class="card-body">
            <header class="card-header">
                <div class="question-header d-flex align-items-center">
                    <!-- Mobile Question details -->
                    <div class="d-none question-details d-flex mb-3">
                        <!-- Course -->
                        @include('partials.question.courses')

                        <!-- Edit/Delete: only for Registred Users -->
                        @include('partials.question.editDelete', ['margin' => 'ms-auto'])

                    </div>

                    <!-- Question Title -->
                    <h2 class="card-title flex-grow-1">{{$question->title}}</h2> <!-- Question Title -->

                    <!-- Desktop Question details -->
                    <div class="question-details d-flex">

                        @include('partials.question.courses')

                        <!-- Edit/Delete: only for Registred Users -->
                        @include('partials.question.editDelete', ['margin' => ''])
                    </div>
                </div>

                <!-- Question Owner details -->
                @include('partials.question.author')

            </header>

            <!-- Question Text -->
            <div class="row align-items-center px-3">
                @include('partials.question.questionText')
            </div>


            <!-- Footer -->
            <footer class="d-flex">

                <!-- Tags -->
                @include('partials.question.tags')

                <!-- Report Button -->
                @include('partials.question.report',['margin' => 'ms-auto'])

            </footer>

        </div>

    </article>

    <!-- Answer -->
    <!-- Questions -->
    <section class="answers">
        <header class="d-flex align-items-center">
            <h4 class="d-inline-block">{{$question->number_answer}} answers</h4>
            <a class="btn btn-primary ms-auto" href="#submit-answer">Add Answer</a>
        </header>
        <div class="answer card">
            @each('partials.answer-card', $question->answers, 'answer')
        </div>
    </section>

    <!-- Submit Answer Form -->
    <form id="submit-answer">
       @include('partials.question.answer-form')
    </form>
</div>
@endsection