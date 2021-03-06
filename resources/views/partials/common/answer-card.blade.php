<div class="card-body card answer-question-card my-2 p-2" id="answer-{{$answer->id}}">
    <div>
        @if($answer->deleted === true)
            <div class="alert alert-danger small-deleted-alert container-lg" role="alert">
                This Answer has been deleted. Only Administrators and Moderators can see it.
            </div>
        @endif

        <header class="question-author d-flex align-items-center card-header p-0 pt-2 me-2">
            <input type="hidden" class="answer-id" value="{{$answer->id}}">
            @include('partials.question.author', ['element' =>$answer])
            <div class="d-flex ms-auto">
                @can('edit',$answer)
                    <form title="Edit-answer" action="#" class="answer-edit-form">
                        <input type="hidden" class="d-none" name="answerID" value="{{$answer->id}}">
                        <button class="icon-hover edit-answer" title="Edit" type="submit" data-bs-toggle="tooltip"
                                data-bs-placement="top">
                            <i class="far fa-edit"></i>
                            <i class="fas fa-edit"></i>
                        </button>
                    </form>
                @endcan
                @can('delete', $answer)
                    <form class="answer-delete-form" action="#">
                        <input type="hidden" name="answerID" value="{{$answer->id}}">
                        <button class="icon-hover edit-answer" type="submit" title="Delete" data-bs-toggle="tooltip"
                                data-bs-placement="top">
                            <i class="far fa-trash-alt"></i>
                            <i class="fas fa-trash-alt"></i>
                        </button>
                    </form>
                @endcan
                
                
                @can('report',$answer)
                    @include('partials.common.report', ['margin' => '', 'type'=>'answer', 'id'=>$answer->id])
                @endcan
                
            </div>
        </header>

        <div class="d-flex align-items-center px-3">
            @if(Auth::check() && (Auth::user()->id != $answer->answer_owner_id))
                <div class="py-2 col-auto d-flex flex-column justify-content-center align-items-center">
                    <input class="answer-id" value="{{ $answer->id }}" hidden/>
                    <button class="icon-hover vote_btn" title="Up Vote" type="submit" data-bs-toggle="tooltip"
                            data-bs-placement="top">
                        <i class="upvote-answer-{{ $answer->id }} bi bi-caret-up{{$answer->userVote(Auth::user()->id) == 1 ? '-fill' : ''}}"></i>
                        <i class="upvote-answer-{{ $answer->id }} bi bi-caret-up-fill text-dark"></i>
                    </button>
                    <p class="answer-score-{{ $answer->id }} points m-0">{{$answer->score}}</p>
                    <button class="icon-hover vote_btn" title="Down Vote" type="submit" data-bs-toggle="tooltip"
                            data-bs-placement="top">
                        <i class="downvote-answer-{{ $answer->id }} bi bi-caret-down{{$answer->userVote(Auth::user()->id) == -1 ? '-fill' : ''}}"></i>
                        <i class="downvote-answer-{{ $answer->id }} bi bi-caret-down-fill text-dark"></i>
                    </button>
                </div>
            @else
                <div class="py-2 col-auto d-flex flex-column justify-content-center align-items-center">
                    <input class="answer-id" hidden/>
                    <button class="icon-hover vote_btn" title="Up Vote" type="submit" data-bs-toggle="tooltip"
                            data-bs-placement="top">
                        <i class="bi bi-caret-up text-secondary"></i>
                        <i class="bi bi-caret-up-fill text-secondary"></i>
                    </button>
                    <p class="answer-score-{{ $answer->id }} points m-0">{{$answer->score}}</p>
                    <button class="icon-hover vote_btn" title="Down Vote" type="submit" data-bs-toggle="tooltip"
                            data-bs-placement="top">
                        <i class="bi bi-caret-down text-secondary"></i>
                        <i class="bi bi-caret-down-fill text-secondary"></i>
                    </button>
                </div>
            @endif

            <div class="col align-self-start ps-4 mt-2 md-content" id="answer-content-{{$answer->id}}">{{ $answer->content }}</div>


            <div class="col align-self-start ps-4 d-none" id="edit-answer-{{$answer->id}}">
                <form class="edit-answer-forms" >
                    <input type="hidden" name="answerID" value="{{$answer->id}}">
                    <div class="testing-editor" >
                        <textarea class="form-control" placeholder="Type your answer here" name="content">{{$answer->content}}</textarea>
                        <div class="editor-toolbar"></div>
                    </div>
                   
                    <div class="d-grid gap-2 d-flex justify-content-end">
                        <button class="btn btn-primary mt-3" type="submit"> Apply Changes </button>
                        <button class="btn btn-outline-primary mt-3" type="button" name="{{$answer->id}}"> Cancel </button>
                    </div>
                </form>
            </div>


            <div class="col-auto d-flex flex-column justify-content-center valid-icon-{{$answer->id}}">
                @if ($answer->valid)
                    <i class="fas fa-check text-center"></i>
                @endif

            </div>

        </div>

    </div>
    <div class="ps-3">
        <hr>
    </div>
    <footer class="d-flex align-items-center pb-2">
        <span id="answer-{{$answer->id}}-number-comments" class="comments flex-grow-1"> {{ @count($answer->orderedComments(Auth::user())->get()) }} Comments</span>
        <hr>
        <!-- If question owner -->
        @can('valid', $answer)
            @if ($answer->valid)
                <button class="mark-valid btn btn-link mark-valid-{{$answer->id}}" type="submit">Unmark as valid
                </button>
            @else
                <button class="mark-valid btn btn-link mark-valid-{{$answer->id}}" type="submit">Mark as valid
                </button>
            @endif
        @endcan


        <a class="btn btn-link" data-bs-toggle="collapse" href="#collapseCommentForm-{{$answer->id}}" role="button"
           aria-expanded="false" aria-controls="collapseCommentForm-{{$answer->id}}">Add Comment</a>
    </footer>

    <div class="comments">
        <div class="collapse" id="collapseCommentForm-{{$answer->id}}">
            <form class="submit-comments">
                <input type="hidden" name="answerID" value="{{$answer->id}}">
                <div class="mb-3 p-3">
                    <textarea class="form-control" rows="2" name="content"
                              placeholder="Type your comment here"></textarea>
                    <div class="d-grid gap-2 d-flex justify-content-end">
                        <button class="btn btn-primary mt-3" type="submit">Submit</button>
                        <button class="btn btn-outline-primary mt-3" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseCommentForm-{{$answer->id}}" aria-expanded="false"
                                aria-controls="collapseCommentForm-{{$answer->id}}">Cancel
                        </button>
                    </div>
                </div>
            </form>
        </div>

        <div id="comments-answer-{{$answer->id}}">
            @include('partials.common.comment-list',['comments'=> $answer->orderedComments(Auth::user())->limit(3)->get()])
        </div>
        
        @if(count($answer->comments) > 3 )
            <button id="load-comments-answer-{{$answer->id}}"class="btn btn-link add-more-comments" type="button" value="{{$answer->id}}"> Load {{count($answer->comments) - 3 }} more Comments</button>
        @endif

    </div>
</div>

