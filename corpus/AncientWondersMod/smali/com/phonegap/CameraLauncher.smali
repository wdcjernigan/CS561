.class public Lcom/phonegap/CameraLauncher;
.super Lcom/phonegap/api/Plugin;
.source "CameraLauncher.java"


# static fields
.field private static final CAMERA:I = 0x1

.field private static final DATA_URL:I = 0x0

.field private static final FILE_URI:I = 0x1

.field private static final PHOTOLIBRARY:I = 0x0

.field private static final SAVEDPHOTOALBUM:I = 0x2


# instance fields
.field public callbackId:Ljava/lang/String;

.field private imageUri:Landroid/net/Uri;

.field private mQuality:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 9
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 65
    sget-object v5, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    .line 66
    .local v5, status:Lcom/phonegap/api/PluginResult$Status;
    const-string v3, ""

    .line 67
    .local v3, result:Ljava/lang/String;
    iput-object p3, p0, Lcom/phonegap/CameraLauncher;->callbackId:Ljava/lang/String;

    .line 70
    :try_start_0
    const-string v6, "takePicture"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, destType:I
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-le v6, v7, :cond_0

    .line 73
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 75
    :cond_0
    const/4 v4, 0x1

    .line 76
    .local v4, srcType:I
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-le v6, v8, :cond_1

    .line 77
    const/4 v6, 0x2

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    .line 79
    :cond_1
    if-ne v4, v7, :cond_3

    .line 80
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-virtual {p0, v6, v0}, Lcom/phonegap/CameraLauncher;->takePicture(II)V

    .line 85
    :cond_2
    :goto_0
    new-instance v2, Lcom/phonegap/api/PluginResult;

    sget-object v6, Lcom/phonegap/api/PluginResult$Status;->NO_RESULT:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v2, v6}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    .line 86
    .local v2, r:Lcom/phonegap/api/PluginResult;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/phonegap/api/PluginResult;->setKeepCallback(Z)V

    .line 92
    .end local v0           #destType:I
    .end local v2           #r:Lcom/phonegap/api/PluginResult;
    .end local v4           #srcType:I
    :goto_1
    return-object v2

    .line 82
    .restart local v0       #destType:I
    .restart local v4       #srcType:I
    :cond_3
    if-eqz v4, :cond_4

    if-ne v4, v8, :cond_2

    .line 83
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-virtual {p0, v6, v4, v0}, Lcom/phonegap/CameraLauncher;->getImage(III)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v0           #destType:I
    .end local v4           #srcType:I
    :catch_0
    move-exception v1

    .line 91
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 92
    new-instance v2, Lcom/phonegap/api/PluginResult;

    sget-object v6, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v2, v6}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto :goto_1

    .line 89
    .end local v1           #e:Lorg/json/JSONException;
    :cond_5
    :try_start_1
    new-instance v2, Lcom/phonegap/api/PluginResult;

    invoke-direct {v2, v5, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public failPicture(Ljava/lang/String;)V
    .locals 2
    .parameter "err"

    .prologue
    .line 277
    new-instance v0, Lcom/phonegap/api/PluginResult;

    sget-object v1, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/phonegap/CameraLauncher;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/CameraLauncher;->error(Lcom/phonegap/api/PluginResult;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public getImage(III)V
    .locals 4
    .parameter "quality"
    .parameter "srcType"
    .parameter "returnType"

    .prologue
    .line 138
    iput p1, p0, Lcom/phonegap/CameraLauncher;->mQuality:I

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/phonegap/CameraLauncher;->ctx:Lcom/phonegap/api/PhonegapActivity;

    new-instance v2, Ljava/lang/String;

    const-string v3, "Get Picture"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v3, p3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Lcom/phonegap/api/PhonegapActivity;->startActivityForResult(Lcom/phonegap/api/Plugin;Landroid/content/Intent;I)V

    .line 146
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 159
    div-int/lit8 v9, p1, 0x10

    add-int/lit8 v6, v9, -0x1

    .line 160
    .local v6, srcType:I
    rem-int/lit8 v9, p1, 0x10

    add-int/lit8 v1, v9, -0x1

    .line 163
    .local v1, destType:I
    if-ne v6, v11, :cond_4

    .line 166
    if-ne p2, v10, :cond_2

    .line 169
    :try_start_0
    iget-object v9, p0, Lcom/phonegap/CameraLauncher;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v9}, Lcom/phonegap/api/PhonegapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/phonegap/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-static {v9, v10}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 173
    invoke-virtual {p0, v0}, Lcom/phonegap/CameraLauncher;->processPicture(Landroid/graphics/Bitmap;)V

    .line 249
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 177
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    if-ne v1, v11, :cond_0

    .line 180
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 181
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "mime_type"

    const-string v10, "image/jpeg"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    const/4 v7, 0x0

    .line 184
    .local v7, uri:Landroid/net/Uri;
    :try_start_1
    iget-object v9, p0, Lcom/phonegap/CameraLauncher;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v9}, Lcom/phonegap/api/PhonegapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 197
    :goto_1
    :try_start_2
    iget-object v9, p0, Lcom/phonegap/CameraLauncher;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v9}, Lcom/phonegap/api/PhonegapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    .line 198
    .local v4, os:Ljava/io/OutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v10, p0, Lcom/phonegap/CameraLauncher;->mQuality:I

    invoke-virtual {v0, v9, v10, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 199
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 202
    new-instance v9, Lcom/phonegap/api/PluginResult;

    sget-object v10, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/phonegap/CameraLauncher;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Lcom/phonegap/CameraLauncher;->success(Lcom/phonegap/api/PluginResult;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 204
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v7           #uri:Landroid/net/Uri;
    .end local v8           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 205
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 206
    const-string v9, "Error capturing image."

    invoke-virtual {p0, v9}, Lcom/phonegap/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #uri:Landroid/net/Uri;
    .restart local v8       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v2

    .line 186
    .local v2, e:Ljava/lang/UnsupportedOperationException;
    :try_start_3
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Can\'t write to external media storage."

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 188
    :try_start_4
    iget-object v9, p0, Lcom/phonegap/CameraLauncher;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v9}, Lcom/phonegap/api/PhonegapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v7

    goto :goto_1

    .line 189
    :catch_2
    move-exception v3

    .line 190
    .local v3, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_5
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Can\'t write to internal media storage."

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    const-string v9, "Error capturing image - no media storage found."

    invoke-virtual {p0, v9}, Lcom/phonegap/CameraLauncher;->failPicture(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 211
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #e:Ljava/lang/UnsupportedOperationException;
    .end local v3           #ex:Ljava/lang/UnsupportedOperationException;
    .end local v7           #uri:Landroid/net/Uri;
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_2
    if-nez p2, :cond_3

    .line 212
    const-string v9, "Camera cancelled."

    invoke-virtual {p0, v9}, Lcom/phonegap/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_3
    const-string v9, "Did not complete!"

    invoke-virtual {p0, v9}, Lcom/phonegap/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_4
    if-eqz v6, :cond_5

    const/4 v9, 0x2

    if-ne v6, v9, :cond_0

    .line 223
    :cond_5
    if-ne p2, v10, :cond_7

    .line 224
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 225
    .restart local v7       #uri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/phonegap/CameraLauncher;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v9}, Lcom/phonegap/api/PhonegapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 227
    .local v5, resolver:Landroid/content/ContentResolver;
    if-nez v1, :cond_6

    .line 229
    :try_start_6
    invoke-virtual {v5, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 230
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/phonegap/CameraLauncher;->processPicture(Landroid/graphics/Bitmap;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 231
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_3
    move-exception v2

    .line 232
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 233
    const-string v9, "Error retrieving image."

    invoke-virtual {p0, v9}, Lcom/phonegap/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_6
    if-ne v1, v11, :cond_0

    .line 239
    new-instance v9, Lcom/phonegap/api/PluginResult;

    sget-object v10, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/phonegap/CameraLauncher;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Lcom/phonegap/CameraLauncher;->success(Lcom/phonegap/api/PluginResult;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_7
    if-nez p2, :cond_8

    .line 243
    const-string v9, "Selection cancelled."

    invoke-virtual {p0, v9}, Lcom/phonegap/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 246
    :cond_8
    const-string v9, "Selection did not complete!"

    invoke-virtual {p0, v9}, Lcom/phonegap/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public processPicture(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "bitmap"

    .prologue
    .line 257
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 259
    .local v2, jpeg_data:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v6, p0, Lcom/phonegap/CameraLauncher;->mQuality:I

    invoke-virtual {p1, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 260
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 261
    .local v0, code:[B
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v4

    .line 262
    .local v4, output:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 263
    .local v3, js_out:Ljava/lang/String;
    new-instance v5, Lcom/phonegap/api/PluginResult;

    sget-object v6, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v5, v6, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/phonegap/CameraLauncher;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/phonegap/CameraLauncher;->success(Lcom/phonegap/api/PluginResult;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v0           #code:[B
    .end local v3           #js_out:Ljava/lang/String;
    .end local v4           #output:[B
    :cond_0
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Error compressing image."

    invoke-virtual {p0, v5}, Lcom/phonegap/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public takePicture(II)V
    .locals 4
    .parameter "quality"
    .parameter "returnType"

    .prologue
    .line 115
    iput p1, p0, Lcom/phonegap/CameraLauncher;->mQuality:I

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Pic.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .local v1, photo:Ljava/io/File;
    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/phonegap/CameraLauncher;->imageUri:Landroid/net/Uri;

    .line 126
    iget-object v2, p0, Lcom/phonegap/CameraLauncher;->ctx:Lcom/phonegap/api/PhonegapActivity;

    add-int/lit8 v3, p2, 0x20

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, p0, v0, v3}, Lcom/phonegap/api/PhonegapActivity;->startActivityForResult(Lcom/phonegap/api/Plugin;Landroid/content/Intent;I)V

    .line 127
    return-void
.end method
