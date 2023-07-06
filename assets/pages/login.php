<div class="login" style="background-color: #fbfbfe;">
    <div class="col-sm-12 col-md-4 bg-white border rounded p-4 shadow-sm">
        <form method="post" action="assets/php/actions.php?login">
            <div class="d-flex justify-content-center">
                <img class="mb-4" src="assets/images/logo1.png" alt="" width="330" height="120">
            </div>
            <h1 style="text-align: center; font-family: 'Roboto Slab', serif; color: #1ebbd7;" class="h5 mb-3 fw-normal">Please Sign In</h1>


            <div class="form-floating">
                <input type="text" name="username_email" value="<?= showFormData('username_email') ?>"
                    class="form-control rounded-0" placeholder="username/email">
                <label for="floatingInput">Username/Email</label>
            </div>
            <?= showError('username_email') ?>
            <div class="form-floating mt-1">
                <input type="password" name="password" class="form-control rounded-0" id="floatingPassword"
                    placeholder="Password">
                <label for="floatingPassword">Password</label>
            </div>
            <?= showError('password') ?>
            <?= showError('checkuser') ?>

            <div class="mt-3 d-flex justify-content-between align-items-center">
                <button style="font-family: 'Roboto Slab', serif; background-color: #1ebbd7; color: white; font-weight: 500;" class="btn" type="submit">Sign In</button>
                <a style="text-align: center; font-family: 'Roboto Slab', serif; color: #1ebbd7; font-weight: 700;" href="?signup" class="text-decoration-none">Create New Account</a>
            </div>
            <!-- <a style="text-align: center; font-family: 'Roboto Slab', serif; color: #1ebbd7; font-weight: 700;" href="#" class="text-decoration-none">Forgot password ?</a> -->
        </form>
    </div>
</div>