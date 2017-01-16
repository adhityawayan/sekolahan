<?php
/**
 * Created by PhpStorm.
 * User: deyelovi
 * Date: 12/01/2017
 * Time: 13:20
 */
?>
<div class="form-group">
    <div class="col-md-6 col-md-offset-3">
        <ul class="list-group"><li class="list-group-item">
                <div class="checkbox">
                    <label>
                        <input onchange="checkall()" id="checkAll" type="checkbox"> Select All
                    </label>
                </div>
            </li>
            <?php foreach($list as $row): ?>
                <li class="list-group-item">
                    <div class="checkbox">
                        <label>
                            <input name="student[]" value="<?=$row['student_id']?>" class="liststudents" type="checkbox"><?=$row['student_nam']?>
                        </label>
                    </div>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
</div>
