<div class="card">
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
    <div class="card-body col row border p-2 mx-auto">
        <div class="col border p-2 bg-light m-2">

            <form action="save-ads" method="post" enctype="multipart/form-data">
                <div class="col">
                    <label for="">Ads Image</label>
                    <input class="form-control" type="file">
                    <input class="form-control" type="hidden">

                </div>
                <div class="col">
                    <label for="">Priority</label>
                    <input class="form-control" type="number" min="1">
                </div>

                <div class="m-2 text-right">

                    <button class="btn btn-otline-success w-25 border bg-blue">Save Changes <i
                            class="fa fa-plus"></i></button>

                </div>
            </form>

        </div>
        <div class="col border p-2 bg-light m-2">




        </div>

    </div>

</div>