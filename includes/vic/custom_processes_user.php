<?php
/* ===== ===== ===== ===== ===== ===== ===== ===== ===== ===== */
/* ===== begin custom configs user ===== */
/* ===== ===== ===== ===== ===== ===== ===== ===== ===== ===== */
$custom_configs_user = array(
    'user_groups' => array(
        '10' => 'System Admin', /* Victoria Admin */
        '9' => 'System Users', /* Victoria Users */
    ), 
    'user_access_profiles' => array(
        /* ===== ===== ===== ===== ===== */
        /* begin Victoria Admin */
        /* ===== ===== ===== ===== ===== */
        '10' => array(
            'supplier-vic' => array(
                'record action' => array('save' => true, 'update' => true, 'delete' => true)
            )
        ), 
        /* end Victoria Admin */


        /* ===== ===== ===== ===== ===== */
        /* begin Victoria Users */
        /* ===== ===== ===== ===== ===== */
        '9' => array(
            'supplier-vic' => array(
                'record action' => array('save' => true, 'update' => true, 'delete' => true)
            )
        )
        /* end Victoria Users */
    )
);
/* ===== end custom configs user ===== */
?>





<?php
/* ===== ===== ===== ===== ===== ===== ===== ===== ===== ===== */
/* ===== begin bridging classes ===== */
/* ===== ===== ===== ===== ===== ===== ===== ===== ===== ===== */
class UserInfo {
    public $username = 'admin';
    public $password = '827ccb0eea8a706c4c34a16891f84e7b';
    public $groups = array(
        10 => 10, 
        9 => 9
    );
}

class JFactory {
    public function getUser() {
        $user_info = new UserInfo();
        return $user_info;
    }
}
/* ===== end bridging classes ===== */
?>





<?php
/* ===== ===== ===== ===== ===== ===== ===== ===== ===== ===== */
/* ===== begin custom functions user ===== */
/* ===== ===== ===== ===== ===== ===== ===== ===== ===== ===== */
class CustomFunctionsUser {
    function getUserGroupKey($user_group_info) {
        $user_group_key = '';

        foreach ($user_group_info as $key1 => $value1) {
            $user_group_key = $key1;
        }

        return $user_group_key;
    }
}
/* ===== end custom functions user ===== */
?>





<?php
/* ===== ===== ===== ===== ===== ===== ===== ===== ===== ===== */
/* ===== begin custom processes user ===== */
/* ===== ===== ===== ===== ===== ===== ===== ===== ===== ===== */
$current_signed_in_user_info = JFactory::getUser();

$custom_functions_user = new CustomFunctionsUser();
$current_signed_in_user_group_key = $custom_functions_user->getUserGroupKey($current_signed_in_user_info->groups);
/* ===== end custom processes user ===== */
?>