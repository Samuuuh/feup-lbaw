<?php

namespace App\Policies;

use App\Models\User;

use Illuminate\Auth\Access\HandlesAuthorization;
use Illuminate\Support\Facades\Auth;

class UserPolicy
{
    use HandlesAuthorization;

    public function show(User $user, User $profile){

      return Auth::check() && ($profile->ban === false || $user->isAdmin() || $user->isModerator());
    }


    public function showManageUsers(User $user){
      return Auth::check() && ($user->isAdmin() || $user->isModerator());
    }

    // Only the user can edit it's profile.
    public function showEditUserProfile(User $user, User $editUser): bool
    {
        return $editUser->id == $user->id;
    }

    public function editUserProfile(User $user, User $editUser): bool
    {
        return $editUser->id == $user->id;
    }

    public function delete(User $user, User $deleted): bool
    {

        // Administrators can delete any user
        if ($user->isAdmin()) {
          // An Administrator can only delete his account if there is another Administrator
          $admins = User::where('user_role','Administrator')->count();
          return $admins > 1;
        }

        // Moderators can only delete Registered Users
        $deletedIsRegisteredUser = !$deleted->isAdmin() && !$deleted->isModerator();
        if ($deletedIsRegisteredUser && $user->isModerator())
            return true;

        // The own user may delete his account
        return $user->id == $deleted->id;
    } 

   public function updateState(User $user, User $updated){
      if(!Auth::check()) return false;
      
      // Administrators can change the role of any user
      if ($user->isAdmin()){
        return true;
      }

      // Moderators can only change the role of Registered Users or of themselves
      $updatedIsRegisteredUser =  !$updated->isAdmin() && !$updated->isModerator();

      return $updatedIsRegisteredUser && $user->isModerator();
    }

    public function passwordRecovery(?User $user){

      return !Auth::check();
    }

}