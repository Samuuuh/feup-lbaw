<?php

namespace App\Http\Controllers;

use App\Models\Tag;
use App\Models\Course;

use Illuminate\Http\Request;


use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class CategoriesController extends Controller
{
    public function showTags(Request $request){
        $this->authorize('showTags', Tag::class);

        $tags = $this->getFilteredTag($request->input('search-name'));

        return view('pages.manage-tags', ['tags' => $tags->paginate(10), 'url'=> '/admin/tags']);
    }

    public function searchTags(Request $request){
        $this->authorize('showTags', Tag::class);

        $tags = $this->getFilteredTag($request->input('search-name'));

        return response()->json(['success'=> 'Your request was completed', 'url'=> '/admin/tags',
            'html' => view('partials.management.category.table', ['categories' => $tags->paginate(10)])->render()
        ]);

    }

    private function getFilteredTag($search){
        
        if (isset($search) && !empty($search)){
            return Tag::where('name', 'ILIKE', $search . '%');
        }
        return Tag::orderBy('name', 'asc');
    }

    public function addTag(Request $request){
        $this->authorize('addTag', Tag::class);
        $tag = new Tag();
        $jsonTag = json_decode($request->getContent(), true);
        $tag->name = $jsonTag['input'];
        $tag->setAttribute('creation_date', Carbon::now());
        $tag->save();

        return response()->json(['success'=> 'The tag <strong>' . $tag->name . '</strong> was successfully added.', 'url'=> '/admin/tags']);

    }

    public function deleteTag(Request $request){
        
        $this->authorize('deleteTag', Tag::class);
        $jsonTag = json_decode($request->getContent(), true);
        Tag::where('name', "=", $jsonTag['input'])->delete();

        return response()->json(['success'=> 'The tag <strong>' . $jsonTag['input'] . '</strong> was successfully deleted.', 'url'=> '/admin/tags']);

    }


    // COURSES
    public function showCourses(Request $request){
        $this->authorize('showCourses', Course::class);
        $tags = $this->getFilteredCourses($request->input('search-name'));

        return view('pages.manage-courses', ['courses' => $tags->paginate(10), 'url'=> '/admin/courses']);
    }

    public function searchCourses(Request $request): \Illuminate\Http\JsonResponse {
        $this->authorize('showCourses', Course::class);

        $courses= $this->getFilteredCourses($request->input('search-name'));

        return response()->json(['success'=> 'Your request was completed', 'url'=> '/admin/courses',
            'html' => view('partials.management.category.table', ['categories' => $courses->paginate(10)])->render()
        ]);

    }
    private function getFilteredCourses($search){

        if (isset($search) && !empty($search)){
            return Course::where('name', 'ILIKE', $search . '%');
        }
        return Course::orderBy('name', 'asc');
    }

    public function addCourse(Request $request){
        $this->authorize('addCourse', Course::class);

        $course= new Course();
        $jsonCourse= json_decode($request->getContent(), true);
        $course->name = $jsonCourse['input'];
        $course->setAttribute('creation_date', Carbon::now());
        $course->save();

       return response()->json(['success'=> 'The course <strong>' . $jsonCourse['input'] . '</strong> was successfully deleted.', 'url'=> '/admin/courses']);

    }

    public function deleteCourse(Request $request): \Illuminate\Http\JsonResponse {
        $this->authorize('deleteCourse', Course::class);
        
        $jsonCourse = json_decode($request->getContent(), true);
        Course::where('name', "=", $jsonCourse['input'])->delete();

        return response()->json(['success'=> 'The tag <strong>' . $jsonCourse['input'] . '</strong> was successfully deleted.', 'url'=> '/admin/courses']);
    }



}
