<?php if (!empty($adsByid)): extract($adsByid);
endif ?>
<div class="card">
    <?php if (session()->has('success')): ?>
        <div class="float-end  notification alert z-1 alert-success col-3 p-0 my-2 successMessage">
            <p class="m-0 p-1"><?= session('success') ?? '' ?></p>
        </div>
    <?php elseif (session()->has('errors')): ?>
        <div
            class="float-end alert notification alert z-1 alert-danger col-3 p-0 my-2 successMessage d-flex flex-column justify-start">
            <?php if (is_array(session('errors'))): foreach (session('errors') as $error): ?>
                    <span class="m-0 p-1"><?= esc($error) ?></span>
                <?php endforeach;
            else: ?>

                <span class="m-0 p-1"><?= esc(session('errors')) ?></span>
            <?php endif ?>
        </div>
    <?php endif; ?>
    <div class="card-header">
        <div class="col row">
            <div class="col">
                <h5>Ads Setup</h5>
            </div>
            <div class="col text-right">
                <a class="" href=""><i class="fas fa-arrow-right fa-3x"></i> Home/ads-setup</a>
            </div>
        </div>
        <hr>
    </div>
    <?php
    $positions = [
        'Before Breaking',
        'Between Breaking',
        'After Second Breaking',
        'Last Breaking',
        'Home Page Ads-one',
        'Home Page Ads-two',
        'Home Page Ads-three',
        'Home Page Ads-four',
        'Home Page Ads-five',
        'Home Page Ads-six',
        'Home Page Ads-seven',
        'Home Page Ads-eight',
        'Home Page Ads-nine',
        'Home Page Ads-ten',
        'Home Page Ads-eleven',
        'Home Page Ads-twelve',
        'Home Page Sidebar',
        'Sub Page-Before Title',
        'Sub Page After News',
        'Sub Page Sidebar'
    ];
    ?>
    <div class="card-body col row border p-2 mx-auto">
        <div class="col border p-2 bg-light m-2">
            <form class="form-group gap-2 d-flex flex-column" method="post" enctype="multipart/form-data"
                action="<?= base_url('save-ads' . (!empty($id) ? '?id=' . $id : '')) ?>">

                <div class="col">
                    <label for="image">Ads Image</label>
                    <input class="form-control" type="file" name="image" id="image">
                </div>
                <div class="col">
                    <select name="priority" class="form-select">
                        <option value="" hidden>--Select Ads Position--</option>
                        <?php foreach ($positions as $key => $pos): ?>
                            <option value="<?= $key + 1 ?>"
                                <?= !empty($priority) && $priority == $key + 1 ? 'selected' : '' ?>>
                                <?= $pos ?>
                            </option>
                        <?php endforeach; ?>
                    </select>

                </div>
                <div class="m-2 text-right">
                    <button class="btn btn-outline-success w-25 border bg-blue" type="submit">Save Changes <i
                            class="fa fa-plus"></i></button>
                </div>
            </form>
        </div>
        <div class="col border p-2 bg-light m-2">

            <?php if (!empty($image)): ?>
                <img class="w-100 adsImageEdit" src="<?= base_url() . 'assets/uploads/' . $image ?? '' ?>" alt="">
            <?php endif ?>

        </div>

    </div>

    <div class="col border p-2 bg-light m-2">

        <h4>Uploaded Ads</h4>
        <hr>
        <div class="table-responsive">
            <table class="table table-primary">
                <thead>
                    <tr>
                        <th scope="col">S.n</th>
                        <th scope="col">Position</th>
                        <th scope="col">Uploaded Ads</th>
                        <th scope="col">Action</th>

                    </tr>
                </thead>
                <tbody>
                    <?php $i = 0;
                    if (!empty($allAds) && is_array($allAds)): foreach ($allAds as $ad): $i++ ?>
                            <tr class="">
                                <td scope="row"><?= $i . '.' ?? '' ?></td>
                                <td><?= !empty($ad['priority']) ? $positions[$ad['priority'] - 1] : '' ?></td>
                                <td><img class="w-100 adsImage" src="<?= base_url() . 'assets/uploads/' . $ad['image'] ?? '' ?>"
                                        alt="">
                                </td>
                                <td>
                                    <a href="<?php echo base_url() . 'ads-setup?id=' . $ad['id'] ?? '' ?>"
                                        class="btn btn-success">
                                        <ss class="fa fa-edit"></i>
                                    </a>
                                    <a href="<?php echo base_url() . 'delete-ads?id=' . $ad['id'] ?? '' ?>"
                                        class="btn btn-danger">
                                        <ss class="fa fa-trash"></i>
                                    </a>

                                </td>
                            </tr>
                    <?php endforeach;
                    endif ?>
                </tbody>
            </table>
        </div>
    </div>

</div>