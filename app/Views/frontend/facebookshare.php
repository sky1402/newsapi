<?php if (!empty($postdetailsbyId)): extract($postdetailsbyId);
endif ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Facebook Share Example</title>

    <?php if (!empty($featured_image)): ?>
    <meta property="og:title" content="<?= $post_title ?? '' ?>">
    <?php endif ?>

    <?php if (!empty($featured_image)): ?>
    <meta property="og:description" content="<?= $content_section ?? '' ?>">
    <?php endif ?>

    <?php if (!empty($featured_image)): ?>
    <meta property="og:image" content="<?php echo base_url() . 'assets/uploads/' . $featured_image ?>">
    <?php endif ?>
    <meta property="og:url" content="<?php echo base_url() ?>">

    <!-- Ensure HTTPS for better compatibility -->
    <meta property="og:type" content="website">
</head>

<body>

</body>

</html>