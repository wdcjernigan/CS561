.class public Lorg/apache/cordova/CameraLauncher;
.super Lorg/apache/cordova/api/Plugin;
.source "CameraLauncher.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# static fields
.field private static final ALLMEDIA:I = 0x2

.field private static final CAMERA:I = 0x1

.field private static final DATA_URL:I = 0x0

.field private static final FILE_URI:I = 0x1

.field private static final GET_All:Ljava/lang/String; = "Get All"

.field private static final GET_PICTURE:Ljava/lang/String; = "Get Picture"

.field private static final GET_VIDEO:Ljava/lang/String; = "Get Video"

.field private static final JPEG:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CameraLauncher"

.field private static final PHOTOLIBRARY:I = 0x0

.field private static final PICTURE:I = 0x0

.field private static final PNG:I = 0x1

.field private static final SAVEDPHOTOALBUM:I = 0x2

.field private static final VIDEO:I = 0x1


# instance fields
.field private allowEdit:Z

.field public callbackId:Ljava/lang/String;

.field private conn:Landroid/media/MediaScannerConnection;

.field private correctOrientation:Z

.field private encodingType:I

.field private imageUri:Landroid/net/Uri;

.field private mQuality:I

.field private mediaType:I

.field private numPics:I

.field private saveToPhotoAlbum:Z

.field private targetHeight:I

.field private targetWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    .line 101
    return-void
.end method

.method public static calculateSampleSize(IIII)I
    .locals 4
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "dstWidth"
    .parameter "dstHeight"

    .prologue
    .line 551
    int-to-float v2, p0

    int-to-float v3, p1

    div-float v1, v2, v3

    .line 552
    .local v1, srcAspect:F
    int-to-float v2, p2

    int-to-float v3, p3

    div-float v0, v2, v3

    .line 554
    .local v0, dstAspect:F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 555
    div-int v2, p0, p2

    .line 557
    :goto_0
    return v2

    :cond_0
    div-int v2, p1, p3

    goto :goto_0
.end method

.method private checkForDuplicateImage(I)V
    .locals 9
    .parameter "type"

    .prologue
    const/4 v8, 0x0

    .line 601
    const/4 v3, 0x1

    .line 602
    .local v3, diff:I
    invoke-direct {p0}, Lorg/apache/cordova/CameraLauncher;->whichContentStore()Landroid/net/Uri;

    move-result-object v0

    .line 603
    .local v0, contentStore:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lorg/apache/cordova/CameraLauncher;->queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 604
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 606
    .local v1, currentNumOfImages:I
    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    iget-boolean v6, p0, Lorg/apache/cordova/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz v6, :cond_0

    .line 607
    const/4 v3, 0x2

    .line 611
    :cond_0
    iget v6, p0, Lorg/apache/cordova/CameraLauncher;->numPics:I

    sub-int v6, v1, v6

    if-ne v6, v3, :cond_1

    .line 612
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    .line 613
    const-string v6, "_id"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 614
    .local v4, id:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 615
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 617
    .end local v4           #id:I
    .end local v5           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private cleanup(ILandroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "imageType"
    .parameter "oldImage"
    .parameter "bitmap"

    .prologue
    .line 579
    if-eqz p3, :cond_0

    .line 580
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 584
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/cordova/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 586
    invoke-direct {p0, p1}, Lorg/apache/cordova/CameraLauncher;->checkForDuplicateImage(I)V

    .line 588
    invoke-direct {p0}, Lorg/apache/cordova/CameraLauncher;->scanForGallery()V

    .line 590
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 591
    return-void
.end method

.method private createCaptureFile(I)Ljava/io/File;
    .locals 4
    .parameter "encodingType"

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, photo:Ljava/io/File;
    if-nez p1, :cond_0

    .line 209
    new-instance v0, Ljava/io/File;

    .end local v0           #photo:Ljava/io/File;
    iget-object v1, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/cordova/DirectoryManager;->getTempDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".Pic.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .restart local v0       #photo:Ljava/io/File;
    :goto_0
    return-object v0

    .line 210
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 211
    new-instance v0, Ljava/io/File;

    .end local v0           #photo:Ljava/io/File;
    iget-object v1, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/cordova/DirectoryManager;->getTempDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".Pic.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #photo:Ljava/io/File;
    goto :goto_0

    .line 213
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Encoding Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decodeFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "pathName"
    .parameter "dstWidth"
    .parameter "dstHeight"

    .prologue
    .line 542
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 543
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 544
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 545
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 546
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2, p1, p2}, Lorg/apache/cordova/CameraLauncher;->calculateSampleSize(IIII)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 547
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private getRotatedBitmap(ILandroid/graphics/Bitmap;Lorg/apache/cordova/ExifHelper;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "rotate"
    .parameter "bitmap"
    .parameter "exif"

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x4000

    .line 468
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 469
    .local v5, matrix:Landroid/graphics/Matrix;
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    .line 470
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 474
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p2

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 475
    invoke-virtual {p3}, Lorg/apache/cordova/ExifHelper;->resetOrientation()V

    .line 476
    return-object p2

    .line 472
    :cond_0
    int-to-float v0, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0
.end method

.method private getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "imagePath"

    .prologue
    .line 532
    iget v1, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    if-gtz v1, :cond_0

    iget v1, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    if-gtz v1, :cond_0

    .line 533
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 538
    :goto_0
    return-object v1

    .line 536
    :cond_0
    iget v1, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    iget v2, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    invoke-static {p1, v1, v2}, Lorg/apache/cordova/CameraLauncher;->decodeFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 538
    .local v0, unscaledBitmap:Landroid/graphics/Bitmap;
    iget v1, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    iget v2, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private getUriFromMediaStore()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 507
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 508
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "mime_type"

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :try_start_0
    iget-object v4, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 521
    :goto_0
    return-object v2

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v4, "CameraLauncher"

    const-string v5, "Can\'t write to external media storage."

    invoke-static {v4, v5}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :try_start_1
    iget-object v4, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .local v2, uri:Landroid/net/Uri;
    goto :goto_0

    .line 516
    .end local v2           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 517
    .local v1, ex:Ljava/lang/UnsupportedOperationException;
    const-string v4, "CameraLauncher"

    const-string v5, "Can\'t write to internal media storage."

    invoke-static {v4, v5}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .parameter "contentStore"

    .prologue
    const/4 v3, 0x0

    .line 567
    iget-object v0, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private scanForGallery()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lorg/apache/cordova/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 665
    :cond_0
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lorg/apache/cordova/CameraLauncher;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lorg/apache/cordova/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    .line 666
    iget-object v0, p0, Lorg/apache/cordova/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 667
    return-void
.end method

.method private whichContentStore()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 624
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 627
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private writeUncompressedImage(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lorg/apache/cordova/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 490
    .local v1, fis:Ljava/io/FileInputStream;
    iget-object v4, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 491
    .local v3, os:Ljava/io/OutputStream;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 493
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, len:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 494
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 496
    :cond_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 497
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 498
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 499
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 9
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 120
    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    .line 121
    .local v5, status:Lorg/apache/cordova/api/PluginResult$Status;
    const-string v3, ""

    .line 122
    .local v3, result:Ljava/lang/String;
    iput-object p3, p0, Lorg/apache/cordova/CameraLauncher;->callbackId:Ljava/lang/String;

    .line 125
    :try_start_0
    const-string v6, "takePicture"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 126
    const/4 v4, 0x1

    .line 127
    .local v4, srcType:I
    const/4 v0, 0x1

    .line 128
    .local v0, destType:I
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/cordova/CameraLauncher;->saveToPhotoAlbum:Z

    .line 129
    const/4 v6, 0x0

    iput v6, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    .line 130
    const/4 v6, 0x0

    iput v6, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    .line 131
    const/4 v6, 0x0

    iput v6, p0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    .line 132
    const/4 v6, 0x0

    iput v6, p0, Lorg/apache/cordova/CameraLauncher;->mediaType:I

    .line 133
    const/16 v6, 0x50

    iput v6, p0, Lorg/apache/cordova/CameraLauncher;->mQuality:I

    .line 135
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    iput v6, p0, Lorg/apache/cordova/CameraLauncher;->mQuality:I

    .line 136
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 137
    const/4 v6, 0x2

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    .line 138
    const/4 v6, 0x3

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    iput v6, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    .line 139
    const/4 v6, 0x4

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    iput v6, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    .line 140
    const/4 v6, 0x5

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    iput v6, p0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    .line 141
    const/4 v6, 0x6

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    iput v6, p0, Lorg/apache/cordova/CameraLauncher;->mediaType:I

    .line 142
    const/4 v6, 0x7

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lorg/apache/cordova/CameraLauncher;->allowEdit:Z

    .line 143
    const/16 v6, 0x8

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lorg/apache/cordova/CameraLauncher;->correctOrientation:Z

    .line 144
    const/16 v6, 0x9

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lorg/apache/cordova/CameraLauncher;->saveToPhotoAlbum:Z

    .line 146
    if-ne v4, v7, :cond_1

    .line 147
    iget v6, p0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    invoke-virtual {p0, v0, v6}, Lorg/apache/cordova/CameraLauncher;->takePicture(II)V

    .line 152
    :cond_0
    :goto_0
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v2, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 153
    .local v2, r:Lorg/apache/cordova/api/PluginResult;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 159
    .end local v0           #destType:I
    .end local v2           #r:Lorg/apache/cordova/api/PluginResult;
    .end local v4           #srcType:I
    :goto_1
    return-object v2

    .line 149
    .restart local v0       #destType:I
    .restart local v4       #srcType:I
    :cond_1
    if-eqz v4, :cond_2

    if-ne v4, v8, :cond_0

    .line 150
    :cond_2
    invoke-virtual {p0, v4, v0}, Lorg/apache/cordova/CameraLauncher;->getImage(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v0           #destType:I
    .end local v4           #srcType:I
    :catch_0
    move-exception v1

    .line 158
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 159
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v2, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_1

    .line 156
    .end local v1           #e:Lorg/json/JSONException;
    :cond_3
    :try_start_1
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v2, v5, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public failPicture(Ljava/lang/String;)V
    .locals 2
    .parameter "err"

    .prologue
    .line 660
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/cordova/CameraLauncher;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/cordova/CameraLauncher;->error(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public getImage(II)V
    .locals 5
    .parameter "srcType"
    .parameter "returnType"

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Get Picture"

    .line 229
    .local v1, title:Ljava/lang/String;
    iget v2, p0, Lorg/apache/cordova/CameraLauncher;->mediaType:I

    if-nez v2, :cond_2

    .line 230
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    :cond_0
    :goto_0
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    iget-object v2, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    if-eqz v2, :cond_1

    .line 246
    iget-object v2, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v2, p0, v3, v4}, Lorg/apache/cordova/api/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/api/IPlugin;Landroid/content/Intent;I)V

    .line 249
    :cond_1
    return-void

    .line 232
    :cond_2
    iget v2, p0, Lorg/apache/cordova/CameraLauncher;->mediaType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 233
    const-string v2, "video/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v1, "Get Video"

    goto :goto_0

    .line 236
    :cond_3
    iget v2, p0, Lorg/apache/cordova/CameraLauncher;->mediaType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 239
    const-string v2, "*/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v1, "Get All"

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 25
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 262
    div-int/lit8 v3, p1, 0x10

    add-int/lit8 v23, v3, -0x1

    .line 263
    .local v23, srcType:I
    rem-int/lit8 v3, p1, 0x10

    add-int/lit8 v15, v3, -0x1

    .line 264
    .local v15, destType:I
    const/16 v22, 0x0

    .line 267
    .local v22, rotate:I
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_e

    .line 269
    new-instance v17, Lorg/apache/cordova/ExifHelper;

    invoke-direct/range {v17 .. v17}, Lorg/apache/cordova/ExifHelper;-><init>()V

    .line 271
    .local v17, exif:Lorg/apache/cordova/ExifHelper;
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    if-nez v3, :cond_0

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/DirectoryManager;->getTempDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/.Pic.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/apache/cordova/ExifHelper;->createInFile(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {v17 .. v17}, Lorg/apache/cordova/ExifHelper;->readExifData()V

    .line 274
    invoke-virtual/range {v17 .. v17}, Lorg/apache/cordova/ExifHelper;->getOrientation()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 280
    :cond_0
    :goto_0
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_c

    .line 282
    const/4 v13, 0x0

    .line 285
    .local v13, bitmap:Landroid/graphics/Bitmap;
    if-nez v15, :cond_4

    .line 286
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/cordova/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/cordova/CameraLauncher;->getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 288
    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/cordova/CameraLauncher;->correctOrientation:Z

    if-eqz v3, :cond_1

    .line 289
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v13, v2}, Lorg/apache/cordova/CameraLauncher;->getRotatedBitmap(ILandroid/graphics/Bitmap;Lorg/apache/cordova/ExifHelper;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 292
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/cordova/CameraLauncher;->processPicture(Landroid/graphics/Bitmap;)V

    .line 293
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/cordova/CameraLauncher;->checkForDuplicateImage(I)V

    .line 350
    :cond_2
    :goto_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->imageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v13}, Lorg/apache/cordova/CameraLauncher;->cleanup(ILandroid/net/Uri;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 457
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .end local v17           #exif:Lorg/apache/cordova/ExifHelper;
    :cond_3
    :goto_2
    return-void

    .line 276
    .restart local v17       #exif:Lorg/apache/cordova/ExifHelper;
    :catch_0
    move-exception v16

    .line 277
    .local v16, e:Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 297
    .end local v16           #e:Ljava/io/IOException;
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    const/4 v3, 0x1

    if-ne v15, v3, :cond_2

    .line 299
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/cordova/CameraLauncher;->saveToPhotoAlbum:Z

    if-nez v3, :cond_7

    .line 300
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/cordova/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/cordova/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v24

    .line 305
    .local v24, uri:Landroid/net/Uri;
    :goto_3
    if-nez v24, :cond_5

    .line 306
    const-string v3, "Error capturing image - no media storage found."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    .line 310
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->mQuality:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_8

    if-nez v22, :cond_8

    .line 311
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/apache/cordova/CameraLauncher;->writeUncompressedImage(Landroid/net/Uri;)V

    .line 313
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/cordova/CameraLauncher;->success(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    .line 341
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/cordova/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz v3, :cond_b

    .line 342
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/cordova/CameraLauncher;->success(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 353
    .end local v24           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v16

    .line 354
    .restart local v16       #e:Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    .line 355
    const-string v3, "Error capturing image."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 302
    .end local v16           #e:Ljava/io/IOException;
    :cond_7
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lorg/apache/cordova/CameraLauncher;->getUriFromMediaStore()Landroid/net/Uri;

    move-result-object v24

    .restart local v24       #uri:Landroid/net/Uri;
    goto :goto_3

    .line 315
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/cordova/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/cordova/CameraLauncher;->getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 317
    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/cordova/CameraLauncher;->correctOrientation:Z

    if-eqz v3, :cond_9

    .line 318
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v13, v2}, Lorg/apache/cordova/CameraLauncher;->getRotatedBitmap(ILandroid/graphics/Bitmap;Lorg/apache/cordova/ExifHelper;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 322
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v20

    .line 323
    .local v20, os:Ljava/io/OutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/cordova/CameraLauncher;->mQuality:I

    move-object/from16 v0, v20

    invoke-virtual {v13, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 324
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 328
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    if-nez v3, :cond_6

    .line 330
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/cordova/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz v3, :cond_a

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Lorg/apache/cordova/FileUtils;->getRealPathFromURI(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;

    move-result-object v18

    .line 335
    .local v18, exifPath:Ljava/lang/String;
    :goto_5
    invoke-virtual/range {v17 .. v18}, Lorg/apache/cordova/ExifHelper;->createOutFile(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {v17 .. v17}, Lorg/apache/cordova/ExifHelper;->writeExifData()V

    goto/16 :goto_4

    .line 333
    .end local v18           #exifPath:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v18

    .restart local v18       #exifPath:Ljava/lang/String;
    goto :goto_5

    .line 346
    .end local v18           #exifPath:Ljava/lang/String;
    .end local v20           #os:Ljava/io/OutputStream;
    :cond_b
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/cordova/CameraLauncher;->success(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 360
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .end local v24           #uri:Landroid/net/Uri;
    :cond_c
    if-nez p2, :cond_d

    .line 361
    const-string v3, "Camera cancelled."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 366
    :cond_d
    const-string v3, "Did not complete!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 371
    .end local v17           #exif:Lorg/apache/cordova/ExifHelper;
    :cond_e
    if-eqz v23, :cond_f

    const/4 v3, 0x2

    move/from16 v0, v23

    if-ne v0, v3, :cond_3

    .line 372
    :cond_f
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_18

    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v24

    .line 377
    .restart local v24       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->mediaType:I

    if-eqz v3, :cond_10

    .line 378
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/cordova/CameraLauncher;->success(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 383
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Lorg/apache/cordova/FileUtils;->getRealPathFromURI(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;

    move-result-object v19

    .line 384
    .local v19, imagePath:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/cordova/CameraLauncher;->getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 387
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    if-nez v15, :cond_14

    .line 388
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "orientation"

    aput-object v4, v5, v3

    .line 389
    .local v5, cols:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 392
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_11

    .line 393
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 394
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 395
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_11
    if-eqz v22, :cond_12

    .line 398
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 399
    .local v11, matrix:Landroid/graphics/Matrix;
    move/from16 v0, v22

    int-to-float v3, v0

    invoke-virtual {v11, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 400
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x1

    move-object v6, v13

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 402
    .end local v11           #matrix:Landroid/graphics/Matrix;
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/cordova/CameraLauncher;->processPicture(Landroid/graphics/Bitmap;)V

    .line 445
    .end local v5           #cols:[Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_13
    :goto_6
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 446
    const/4 v13, 0x0

    .line 447
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_2

    .line 406
    :cond_14
    const/4 v3, 0x1

    if-ne v15, v3, :cond_13

    .line 408
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    if-lez v3, :cond_17

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    if-lez v3, :cond_17

    .line 411
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/DirectoryManager;->getTempDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/resize.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 412
    .local v21, resizePath:Ljava/lang/String;
    new-instance v17, Lorg/apache/cordova/ExifHelper;

    invoke-direct/range {v17 .. v17}, Lorg/apache/cordova/ExifHelper;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 414
    .restart local v17       #exif:Lorg/apache/cordova/ExifHelper;
    :try_start_5
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    if-nez v3, :cond_15

    .line 415
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/cordova/ExifHelper;->createInFile(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {v17 .. v17}, Lorg/apache/cordova/ExifHelper;->readExifData()V

    .line 417
    invoke-virtual/range {v17 .. v17}, Lorg/apache/cordova/ExifHelper;->getOrientation()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v22

    .line 423
    :cond_15
    :goto_7
    :try_start_6
    new-instance v20, Ljava/io/FileOutputStream;

    invoke-direct/range {v20 .. v21}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 424
    .restart local v20       #os:Ljava/io/OutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/cordova/CameraLauncher;->mQuality:I

    move-object/from16 v0, v20

    invoke-virtual {v13, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 425
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 428
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    if-nez v3, :cond_16

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Lorg/apache/cordova/FileUtils;->getRealPathFromURI(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/apache/cordova/ExifHelper;->createOutFile(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {v17 .. v17}, Lorg/apache/cordova/ExifHelper;->writeExifData()V

    .line 435
    :cond_16
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/cordova/CameraLauncher;->success(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_6

    .line 436
    .end local v17           #exif:Lorg/apache/cordova/ExifHelper;
    .end local v20           #os:Ljava/io/OutputStream;
    .end local v21           #resizePath:Ljava/lang/String;
    :catch_2
    move-exception v16

    .line 437
    .local v16, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 438
    const-string v3, "Error retrieving image."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 419
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v17       #exif:Lorg/apache/cordova/ExifHelper;
    .restart local v21       #resizePath:Ljava/lang/String;
    :catch_3
    move-exception v16

    .line 420
    .local v16, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_7

    .line 442
    .end local v16           #e:Ljava/io/IOException;
    .end local v17           #exif:Lorg/apache/cordova/ExifHelper;
    .end local v21           #resizePath:Ljava/lang/String;
    :cond_17
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/cordova/CameraLauncher;->success(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 450
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .end local v19           #imagePath:Ljava/lang/String;
    .end local v24           #uri:Landroid/net/Uri;
    :cond_18
    if-nez p2, :cond_19

    .line 451
    const-string v3, "Selection cancelled."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 454
    :cond_19
    const-string v3, "Selection did not complete!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onMediaScannerConnected()V
    .locals 4

    .prologue
    .line 671
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lorg/apache/cordova/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/*"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_0
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 674
    const-string v1, "CameraLauncher"

    const-string v2, "Can;t scan file in MediaScanner aftering taking picture"

    invoke-static {v1, v2}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 680
    iget-object v0, p0, Lorg/apache/cordova/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 681
    return-void
.end method

.method public processPicture(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "bitmap"

    .prologue
    .line 637
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 639
    .local v2, jpeg_data:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v6, p0, Lorg/apache/cordova/CameraLauncher;->mQuality:I

    invoke-virtual {p1, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 640
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 641
    .local v0, code:[B
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v4

    .line 642
    .local v4, output:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 643
    .local v3, js_out:Ljava/lang/String;
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v5, v6, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    iget-object v6, p0, Lorg/apache/cordova/CameraLauncher;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lorg/apache/cordova/CameraLauncher;->success(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    const/4 v3, 0x0

    .line 645
    const/4 v4, 0x0

    .line 651
    .end local v0           #code:[B
    .end local v3           #js_out:Ljava/lang/String;
    .end local v4           #output:[B
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 652
    return-void

    .line 648
    :catch_0
    move-exception v1

    .line 649
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Error compressing image."

    invoke-virtual {p0, v5}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public takePicture(II)V
    .locals 4
    .parameter "returnType"
    .parameter "encodingType"

    .prologue
    .line 183
    invoke-direct {p0}, Lorg/apache/cordova/CameraLauncher;->whichContentStore()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/CameraLauncher;->queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lorg/apache/cordova/CameraLauncher;->numPics:I

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, p2}, Lorg/apache/cordova/CameraLauncher;->createCaptureFile(I)Ljava/io/File;

    move-result-object v1

    .line 190
    .local v1, photo:Ljava/io/File;
    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 191
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/cordova/CameraLauncher;->imageUri:Landroid/net/Uri;

    .line 193
    iget-object v2, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    add-int/lit8 v3, p1, 0x20

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, p0, v0, v3}, Lorg/apache/cordova/api/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/api/IPlugin;Landroid/content/Intent;I)V

    .line 198
    :cond_0
    return-void
.end method
