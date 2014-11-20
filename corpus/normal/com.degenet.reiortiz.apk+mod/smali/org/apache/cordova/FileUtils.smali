.class public Lorg/apache/cordova/FileUtils;
.super Lorg/apache/cordova/api/Plugin;
.source "FileUtils.java"


# static fields
.field public static ABORT_ERR:I = 0x0

.field public static APPLICATION:I = 0x0

.field public static ENCODING_ERR:I = 0x0

.field public static INVALID_MODIFICATION_ERR:I = 0x0

.field public static INVALID_STATE_ERR:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "FileUtils"

.field public static NOT_FOUND_ERR:I = 0x0

.field public static NOT_READABLE_ERR:I = 0x0

.field public static NO_MODIFICATION_ALLOWED_ERR:I = 0x0

.field public static PATH_EXISTS_ERR:I = 0x0

.field public static PERSISTENT:I = 0x0

.field public static QUOTA_EXCEEDED_ERR:I = 0x0

.field public static RESOURCE:I = 0x0

.field public static SECURITY_ERR:I = 0x0

.field public static SYNTAX_ERR:I = 0x0

.field public static TEMPORARY:I = 0x0

.field public static TYPE_MISMATCH_ERR:I = 0x0

.field private static final _DATA:Ljava/lang/String; = "_data"


# instance fields
.field f_in:Ljava/io/FileReader;

.field f_out:Ljava/io/FileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 58
    sput v1, Lorg/apache/cordova/FileUtils;->NOT_FOUND_ERR:I

    .line 59
    sput v2, Lorg/apache/cordova/FileUtils;->SECURITY_ERR:I

    .line 60
    sput v3, Lorg/apache/cordova/FileUtils;->ABORT_ERR:I

    .line 62
    const/4 v0, 0x4

    sput v0, Lorg/apache/cordova/FileUtils;->NOT_READABLE_ERR:I

    .line 63
    const/4 v0, 0x5

    sput v0, Lorg/apache/cordova/FileUtils;->ENCODING_ERR:I

    .line 64
    const/4 v0, 0x6

    sput v0, Lorg/apache/cordova/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    .line 65
    const/4 v0, 0x7

    sput v0, Lorg/apache/cordova/FileUtils;->INVALID_STATE_ERR:I

    .line 66
    const/16 v0, 0x8

    sput v0, Lorg/apache/cordova/FileUtils;->SYNTAX_ERR:I

    .line 67
    const/16 v0, 0x9

    sput v0, Lorg/apache/cordova/FileUtils;->INVALID_MODIFICATION_ERR:I

    .line 68
    const/16 v0, 0xa

    sput v0, Lorg/apache/cordova/FileUtils;->QUOTA_EXCEEDED_ERR:I

    .line 69
    const/16 v0, 0xb

    sput v0, Lorg/apache/cordova/FileUtils;->TYPE_MISMATCH_ERR:I

    .line 70
    const/16 v0, 0xc

    sput v0, Lorg/apache/cordova/FileUtils;->PATH_EXISTS_ERR:I

    .line 72
    const/4 v0, 0x0

    sput v0, Lorg/apache/cordova/FileUtils;->TEMPORARY:I

    .line 73
    sput v1, Lorg/apache/cordova/FileUtils;->PERSISTENT:I

    .line 74
    sput v2, Lorg/apache/cordova/FileUtils;->RESOURCE:I

    .line 75
    sput v3, Lorg/apache/cordova/FileUtils;->APPLICATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    .line 84
    return-void
.end method

.method private atRootDirectory(Ljava/lang/String;)Z
    .locals 2
    .parameter "filePath"

    .prologue
    .line 729
    invoke-static {p1}, Lorg/apache/cordova/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/FileUtils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/FileUtils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    :cond_0
    const/4 v0, 0x1

    .line 736
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyDirectory(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;
    .locals 7
    .parameter "srcDir"
    .parameter "destinationDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Lorg/apache/cordova/file/InvalidModificationException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 441
    new-instance v5, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v6, "Can\'t rename a file to a directory"

    invoke-direct {v5, v6}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 445
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lorg/apache/cordova/FileUtils;->isCopyOnItself(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 446
    new-instance v5, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v6, "Can\'t copy itself into itself"

    invoke-direct {v5, v6}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 450
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 451
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_2

    .line 453
    new-instance v5, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v6, "Couldn\'t create the destination direcotry"

    invoke-direct {v5, v6}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 457
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v2, v0, v3

    .line 458
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 459
    invoke-direct {p0, v2, p2}, Lorg/apache/cordova/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    .line 457
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 461
    :cond_3
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .local v1, destination:Ljava/io/File;
    invoke-direct {p0, v2, v1}, Lorg/apache/cordova/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    goto :goto_1

    .line 466
    .end local v1           #destination:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    :cond_4
    invoke-virtual {p0, p2}, Lorg/apache/cordova/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v5

    return-object v5
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;
    .locals 6
    .parameter "srcFile"
    .parameter "destFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/InvalidModificationException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    new-instance v1, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v2, "Can\'t rename a file to a directory"

    invoke-direct {v1, v2}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 411
    .local v0, input:Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 413
    .local v5, output:Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 415
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 416
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 424
    invoke-virtual {p0, p2}, Lorg/apache/cordova/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method private createDestination(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 3
    .parameter "newName"
    .parameter "fp"
    .parameter "destination"

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 382
    .local v0, destFile:Ljava/io/File;
    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    :cond_0
    const/4 p1, 0x0

    .line 386
    :cond_1
    if-eqz p1, :cond_2

    .line 387
    new-instance v0, Ljava/io/File;

    .end local v0           #destFile:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    .restart local v0       #destFile:Ljava/io/File;
    :goto_0
    return-object v0

    .line 389
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0           #destFile:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #destFile:Ljava/io/File;
    goto :goto_0
.end method

.method private createFileObject(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 759
    invoke-static {p1}, Lorg/apache/cordova/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 761
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 762
    .local v0, file:Ljava/io/File;
    return-object v0
.end method

.method private createFileObject(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "dirPath"
    .parameter "fileName"

    .prologue
    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, fp:Ljava/io/File;
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    new-instance v0, Ljava/io/File;

    .end local v0           #fp:Ljava/io/File;
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 701
    .restart local v0       #fp:Ljava/io/File;
    :goto_0
    return-object v0

    .line 698
    :cond_0
    invoke-static {p1}, Lorg/apache/cordova/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 699
    new-instance v0, Ljava/io/File;

    .end local v0           #fp:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #fp:Ljava/io/File;
    goto :goto_0
.end method

.method private getEntry(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 877
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getFile(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 5
    .parameter "dirPath"
    .parameter "fileName"
    .parameter "options"
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/TypeMismatchException;,
            Lorg/apache/cordova/file/EncodingException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, create:Z
    const/4 v1, 0x0

    .line 639
    .local v1, exclusive:Z
    if-eqz p3, :cond_0

    .line 640
    const-string v3, "create"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 641
    if-eqz v0, :cond_0

    .line 642
    const-string v3, "exclusive"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 647
    :cond_0
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 648
    new-instance v3, Lorg/apache/cordova/file/EncodingException;

    const-string v4, "This file has a : in it\'s name"

    invoke-direct {v3, v4}, Lorg/apache/cordova/file/EncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 651
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/FileUtils;->createFileObject(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 653
    .local v2, fp:Ljava/io/File;
    if-eqz v0, :cond_4

    .line 654
    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 655
    new-instance v3, Lorg/apache/cordova/file/FileExistsException;

    const-string v4, "create/exclusive fails"

    invoke-direct {v3, v4}, Lorg/apache/cordova/file/FileExistsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 657
    :cond_2
    if-eqz p4, :cond_3

    .line 658
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 662
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    .line 663
    new-instance v3, Lorg/apache/cordova/file/FileExistsException;

    const-string v4, "create fails"

    invoke-direct {v3, v4}, Lorg/apache/cordova/file/FileExistsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 660
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    .line 667
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 668
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "path does not exist"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 670
    :cond_5
    if-eqz p4, :cond_6

    .line 671
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 672
    new-instance v3, Lorg/apache/cordova/file/TypeMismatchException;

    const-string v4, "path doesn\'t exist or is file"

    invoke-direct {v3, v4}, Lorg/apache/cordova/file/TypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 675
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 676
    new-instance v3, Lorg/apache/cordova/file/TypeMismatchException;

    const-string v4, "path doesn\'t exist or is directory"

    invoke-direct {v3, v4}, Lorg/apache/cordova/file/TypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 682
    :cond_7
    invoke-virtual {p0, v2}, Lorg/apache/cordova/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    return-object v3
.end method

.method private getFileMetadata(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 791
    invoke-direct {p0, p1}, Lorg/apache/cordova/FileUtils;->createFileObject(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 793
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 794
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 797
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 798
    .local v1, metadata:Lorg/json/JSONObject;
    const-string v2, "size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 799
    const-string v2, "type"

    invoke-static {p1}, Lorg/apache/cordova/FileUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 800
    const-string v2, "name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 801
    const-string v2, "fullPath"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 802
    const-string v2, "lastModifiedDate"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 804
    return-object v1
.end method

.method private getMetadata(Ljava/lang/String;)J
    .locals 3
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 773
    invoke-direct {p0, p1}, Lorg/apache/cordova/FileUtils;->createFileObject(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 775
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 776
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Failed to find file in getMetadata"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 779
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filename"

    .prologue
    .line 964
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 965
    .local v0, map:Landroid/webkit/MimeTypeMap;
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getParent(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 713
    invoke-static {p1}, Lorg/apache/cordova/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 715
    invoke-direct {p0, p1}, Lorg/apache/cordova/FileUtils;->atRootDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-direct {p0, p1}, Lorg/apache/cordova/FileUtils;->getEntry(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 718
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/cordova/FileUtils;->getEntry(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1027
    const-string v1, "content"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1028
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1029
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lorg/apache/cordova/FileUtils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 1033
    .end local v0           #uri:Landroid/net/Uri;
    :goto_0
    return-object v1

    .line 1032
    :cond_0
    invoke-static {p1}, Lorg/apache/cordova/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1033
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static getRealPathFromURI(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;
    .locals 8
    .parameter "contentUri"
    .parameter "cordova"

    .prologue
    const/4 v3, 0x0

    .line 1046
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1047
    .local v2, proj:[Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1048
    .local v7, cursor:Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1049
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1050
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCopyOnItself(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 482
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 483
    const/4 v0, 0x1

    .line 486
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveDirectory(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;
    .locals 2
    .parameter "srcDir"
    .parameter "destinationDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/apache/cordova/file/InvalidModificationException;
        }
    .end annotation

    .prologue
    .line 528
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    new-instance v0, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v1, "Can\'t rename a file to a directory"

    invoke-direct {v0, v1}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/cordova/FileUtils;->isCopyOnItself(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    new-instance v0, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v1, "Can\'t move itself into itself"

    invoke-direct {v0, v1}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    .line 540
    new-instance v0, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v1, "directory is not empty"

    invoke-direct {v0, v1}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 552
    :cond_3
    invoke-virtual {p0, p2}, Lorg/apache/cordova/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private moveFile(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;
    .locals 2
    .parameter "srcFile"
    .parameter "destFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/apache/cordova/file/InvalidModificationException;
        }
    .end annotation

    .prologue
    .line 501
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    new-instance v0, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v1, "Can\'t rename a file to a directory"

    invoke-direct {v0, v1}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/cordova/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private notifyDelete(Ljava/lang/String;)V
    .locals 7
    .parameter "filePath"

    .prologue
    .line 225
    invoke-static {p1}, Lorg/apache/cordova/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, newFilePath:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/cordova/FileUtils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_data = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 229
    .local v1, result:I
    return-void
.end method

.method private readEntries(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lorg/apache/cordova/FileUtils;->createFileObject(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 291
    .local v2, fp:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 293
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4

    .line 296
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 298
    .local v0, entries:Lorg/json/JSONArray;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 299
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 300
    .local v1, files:[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 301
    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Lorg/apache/cordova/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 300
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    .end local v1           #files:[Ljava/io/File;
    .end local v3           #i:I
    :cond_1
    return-object v0
.end method

.method private remove(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Lorg/apache/cordova/file/InvalidModificationException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lorg/apache/cordova/FileUtils;->createFileObject(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 610
    .local v0, fp:Ljava/io/File;
    invoke-direct {p0, p1}, Lorg/apache/cordova/FileUtils;->atRootDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    new-instance v1, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v2, "You can\'t delete the root directory"

    invoke-direct {v1, v2}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 616
    new-instance v1, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v2, "You can\'t delete a directory that is not empty."

    invoke-direct {v1, v2}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 619
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method private removeDirRecursively(Ljava/io/File;)Z
    .locals 7
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 585
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 586
    .local v1, file:Ljava/io/File;
    invoke-direct {p0, v1}, Lorg/apache/cordova/FileUtils;->removeDirRecursively(Ljava/io/File;)Z

    .line 585
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 590
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 591
    new-instance v4, Lorg/apache/cordova/file/FileExistsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/cordova/file/FileExistsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 593
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method private removeRecursively(Ljava/lang/String;)Z
    .locals 2
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lorg/apache/cordova/FileUtils;->createFileObject(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 569
    .local v0, fp:Ljava/io/File;
    invoke-direct {p0, p1}, Lorg/apache/cordova/FileUtils;->atRootDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    const/4 v1, 0x0

    .line 573
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/cordova/FileUtils;->removeDirRecursively(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method private requestFileSystem(I)Lorg/json/JSONObject;
    .locals 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 816
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 817
    .local v1, fs:Lorg/json/JSONObject;
    sget v2, Lorg/apache/cordova/FileUtils;->TEMPORARY:I

    if-ne p1, v2, :cond_1

    .line 819
    const-string v2, "name"

    const-string v3, "temporary"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 820
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 821
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/FileUtils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 824
    .local v0, fp:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 825
    const-string v2, "root"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Android/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/cordova/FileUtils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/FileUtils;->getEntry(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 846
    .end local v0           #fp:Ljava/io/File;
    :goto_0
    return-object v1

    .line 828
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/FileUtils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 830
    .restart local v0       #fp:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 831
    const-string v2, "root"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/cordova/FileUtils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/FileUtils;->getEntry(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 834
    .end local v0           #fp:Ljava/io/File;
    :cond_1
    sget v2, Lorg/apache/cordova/FileUtils;->PERSISTENT:I

    if-ne p1, v2, :cond_3

    .line 835
    const-string v2, "name"

    const-string v3, "persistent"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 836
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 837
    const-string v2, "root"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/cordova/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 839
    :cond_2
    const-string v2, "root"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/cordova/FileUtils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/FileUtils;->getEntry(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 843
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No filesystem of type requested"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private resolveLocalFileSystemURI(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 12
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x7

    const/4 v3, 0x0

    .line 243
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 245
    .local v8, decoded:Ljava/lang/String;
    const/4 v9, 0x0

    .line 248
    .local v9, fp:Ljava/io/File;
    const-string v0, "content:"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/apache/cordova/FileUtils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 251
    .local v7, cursor:Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 252
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 253
    new-instance v9, Ljava/io/File;

    .end local v9           #fp:Ljava/io/File;
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .end local v6           #column_index:I
    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local v9       #fp:Ljava/io/File;
    :goto_0
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 272
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 257
    :cond_0
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 259
    .local v11, testUrl:Ljava/net/URL;
    const-string v0, "file://"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    const-string v0, "?"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 261
    .local v10, questionMark:I
    if-gez v10, :cond_1

    .line 262
    new-instance v9, Ljava/io/File;

    .end local v9           #fp:Ljava/io/File;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v9       #fp:Ljava/io/File;
    goto :goto_0

    .line 264
    :cond_1
    new-instance v9, Ljava/io/File;

    .end local v9           #fp:Ljava/io/File;
    invoke-virtual {v8, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v9       #fp:Ljava/io/File;
    goto :goto_0

    .line 267
    .end local v10           #questionMark:I
    :cond_2
    new-instance v9, Ljava/io/File;

    .end local v9           #fp:Ljava/io/File;
    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v9       #fp:Ljava/io/File;
    goto :goto_0

    .line 274
    .end local v11           #testUrl:Ljava/net/URL;
    :cond_3
    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_4

    .line 275
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 277
    :cond_4
    invoke-virtual {p0, v9}, Lorg/apache/cordova/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 746
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 749
    :cond_0
    return-object p0
.end method

.method private transferTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 5
    .parameter "fileName"
    .parameter "newParent"
    .parameter "newName"
    .parameter "move"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/InvalidModificationException;,
            Lorg/apache/cordova/file/EncodingException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-static {p1}, Lorg/apache/cordova/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-static {p2}, Lorg/apache/cordova/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 327
    if-eqz p3, :cond_0

    const-string v3, ":"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    new-instance v3, Lorg/apache/cordova/file/EncodingException;

    const-string v4, "Bad file name"

    invoke-direct {v3, v4}, Lorg/apache/cordova/file/EncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 331
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v2, source:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 335
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "The source does not exist"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 338
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    .local v1, destinationDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 341
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "The source does not exist"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 345
    :cond_2
    invoke-direct {p0, p3, v2, v1}, Lorg/apache/cordova/FileUtils;->createDestination(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 351
    .local v0, destination:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 352
    new-instance v3, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v4, "Can\'t copy a file onto itself"

    invoke-direct {v3, v4}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 355
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 356
    if-eqz p4, :cond_4

    .line 357
    invoke-direct {p0, v2, v0}, Lorg/apache/cordova/FileUtils;->moveDirectory(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    .line 365
    :goto_0
    return-object v3

    .line 359
    :cond_4
    invoke-direct {p0, v2, v0}, Lorg/apache/cordova/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0

    .line 362
    :cond_5
    if-eqz p4, :cond_6

    .line 363
    invoke-direct {p0, v2, v0}, Lorg/apache/cordova/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0

    .line 365
    :cond_6
    invoke-direct {p0, v2, v0}, Lorg/apache/cordova/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0
.end method

.method private truncateFile(Ljava/lang/String;J)J
    .locals 4
    .parameter "filename"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1006
    invoke-static {p1}, Lorg/apache/cordova/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1008
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    .local v1, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-ltz v2, :cond_0

    .line 1011
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1012
    .local v0, channel:Ljava/nio/channels/FileChannel;
    invoke-virtual {v0, p2, p3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 1016
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local p2
    :goto_0
    return-wide p2

    .restart local p2
    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p2

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 24
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    .line 95
    sget-object v18, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    .line 96
    .local v18, status:Lorg/apache/cordova/api/PluginResult$Status;
    const-string v14, ""

    .line 100
    .local v14, result:Ljava/lang/String;
    :try_start_0
    const-string v20, "testSaveLocationExists"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 101
    invoke-static {}, Lorg/apache/cordova/DirectoryManager;->testSaveLocationExists()Z

    move-result v5

    .line 102
    .local v5, b:Z
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Z)V

    .line 215
    .end local v5           #b:Z
    :goto_0
    return-object v20

    .line 104
    :cond_0
    const-string v20, "getFreeDiskSpace"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 105
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lorg/apache/cordova/DirectoryManager;->getFreeDiskSpace(Z)J

    move-result-wide v11

    .line 106
    .local v11, l:J
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    long-to-float v0, v11

    move/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;F)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/cordova/file/FileExistsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/cordova/file/NoModificationAllowedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/cordova/file/InvalidModificationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/cordova/file/EncodingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/cordova/file/TypeMismatchException; {:try_start_0 .. :try_end_0} :catch_8

    goto :goto_0

    .line 198
    .end local v11           #l:J
    :catch_0
    move-exception v6

    .line 199
    .local v6, e:Ljava/io/FileNotFoundException;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v21, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v22, Lorg/apache/cordova/FileUtils;->NOT_FOUND_ERR:I

    invoke-direct/range {v20 .. v22}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto :goto_0

    .line 108
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :try_start_1
    const-string v20, "testFileExists"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 109
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/apache/cordova/DirectoryManager;->testFileExists(Ljava/lang/String;)Z

    move-result v5

    .line 110
    .restart local v5       #b:Z
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/cordova/file/FileExistsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/cordova/file/NoModificationAllowedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/cordova/file/InvalidModificationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/apache/cordova/file/EncodingException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/apache/cordova/file/TypeMismatchException; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_0

    .line 200
    .end local v5           #b:Z
    :catch_1
    move-exception v6

    .line 201
    .local v6, e:Lorg/apache/cordova/file/FileExistsException;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v21, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v22, Lorg/apache/cordova/FileUtils;->PATH_EXISTS_ERR:I

    invoke-direct/range {v20 .. v22}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto :goto_0

    .line 112
    .end local v6           #e:Lorg/apache/cordova/file/FileExistsException;
    :cond_2
    :try_start_2
    const-string v20, "testDirectoryExists"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 113
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/apache/cordova/DirectoryManager;->testFileExists(Ljava/lang/String;)Z

    move-result v5

    .line 114
    .restart local v5       #b:Z
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/cordova/file/FileExistsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/cordova/file/NoModificationAllowedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/cordova/file/InvalidModificationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/apache/cordova/file/EncodingException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/apache/cordova/file/TypeMismatchException; {:try_start_2 .. :try_end_2} :catch_8

    goto :goto_0

    .line 202
    .end local v5           #b:Z
    :catch_2
    move-exception v6

    .line 203
    .local v6, e:Lorg/apache/cordova/file/NoModificationAllowedException;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v21, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v22, Lorg/apache/cordova/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    invoke-direct/range {v20 .. v22}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 116
    .end local v6           #e:Lorg/apache/cordova/file/NoModificationAllowedException;
    :cond_3
    :try_start_3
    const-string v20, "readAsText"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 117
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/FileUtils;->readAsText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 118
    .local v15, s:Ljava/lang/String;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/cordova/file/FileExistsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/cordova/file/NoModificationAllowedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/cordova/file/InvalidModificationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/apache/cordova/file/EncodingException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/apache/cordova/file/TypeMismatchException; {:try_start_3 .. :try_end_3} :catch_8

    goto/16 :goto_0

    .line 204
    .end local v15           #s:Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 205
    .local v6, e:Lorg/json/JSONException;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v21, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v22, Lorg/apache/cordova/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    invoke-direct/range {v20 .. v22}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 120
    .end local v6           #e:Lorg/json/JSONException;
    :cond_4
    :try_start_4
    const-string v20, "readAsDataURL"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 121
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileUtils;->readAsDataURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 122
    .restart local v15       #s:Ljava/lang/String;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/cordova/file/FileExistsException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/cordova/file/NoModificationAllowedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/cordova/file/InvalidModificationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/apache/cordova/file/EncodingException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/apache/cordova/file/TypeMismatchException; {:try_start_4 .. :try_end_4} :catch_8

    goto/16 :goto_0

    .line 206
    .end local v15           #s:Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 207
    .local v6, e:Lorg/apache/cordova/file/InvalidModificationException;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v21, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v22, Lorg/apache/cordova/FileUtils;->INVALID_MODIFICATION_ERR:I

    invoke-direct/range {v20 .. v22}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 124
    .end local v6           #e:Lorg/apache/cordova/file/InvalidModificationException;
    :cond_5
    :try_start_5
    const-string v20, "write"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 125
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/cordova/FileUtils;->write(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v9

    .line 126
    .local v9, fileSize:J
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    long-to-float v0, v9

    move/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;F)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/cordova/file/FileExistsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/cordova/file/NoModificationAllowedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/cordova/file/InvalidModificationException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/apache/cordova/file/EncodingException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/apache/cordova/file/TypeMismatchException; {:try_start_5 .. :try_end_5} :catch_8

    goto/16 :goto_0

    .line 208
    .end local v9           #fileSize:J
    :catch_5
    move-exception v6

    .line 209
    .local v6, e:Ljava/net/MalformedURLException;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v21, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v22, Lorg/apache/cordova/FileUtils;->ENCODING_ERR:I

    invoke-direct/range {v20 .. v22}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 128
    .end local v6           #e:Ljava/net/MalformedURLException;
    :cond_6
    :try_start_6
    const-string v20, "truncate"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 129
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/cordova/FileUtils;->truncateFile(Ljava/lang/String;J)J

    move-result-wide v9

    .line 130
    .restart local v9       #fileSize:J
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    long-to-float v0, v9

    move/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;F)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/apache/cordova/file/FileExistsException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/cordova/file/NoModificationAllowedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/apache/cordova/file/InvalidModificationException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lorg/apache/cordova/file/EncodingException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lorg/apache/cordova/file/TypeMismatchException; {:try_start_6 .. :try_end_6} :catch_8

    goto/16 :goto_0

    .line 210
    .end local v9           #fileSize:J
    :catch_6
    move-exception v6

    .line 211
    .local v6, e:Ljava/io/IOException;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v21, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v22, Lorg/apache/cordova/FileUtils;->INVALID_MODIFICATION_ERR:I

    invoke-direct/range {v20 .. v22}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 132
    .end local v6           #e:Ljava/io/IOException;
    :cond_7
    :try_start_7
    const-string v20, "requestFileSystem"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 133
    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v16

    .line 134
    .local v16, size:J
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-eqz v20, :cond_8

    .line 135
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lorg/apache/cordova/DirectoryManager;->getFreeDiskSpace(Z)J

    move-result-wide v20

    const-wide/16 v22, 0x400

    mul-long v20, v20, v22

    cmp-long v20, v16, v20

    if-lez v20, :cond_8

    .line 136
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v21, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v22, Lorg/apache/cordova/FileUtils;->QUOTA_EXCEEDED_ERR:I

    invoke-direct/range {v20 .. v22}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/apache/cordova/file/FileExistsException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/cordova/file/NoModificationAllowedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/cordova/file/InvalidModificationException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lorg/apache/cordova/file/EncodingException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lorg/apache/cordova/file/TypeMismatchException; {:try_start_7 .. :try_end_7} :catch_8

    goto/16 :goto_0

    .line 212
    .end local v16           #size:J
    :catch_7
    move-exception v6

    .line 213
    .local v6, e:Lorg/apache/cordova/file/EncodingException;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v21, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v22, Lorg/apache/cordova/FileUtils;->ENCODING_ERR:I

    invoke-direct/range {v20 .. v22}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 139
    .end local v6           #e:Lorg/apache/cordova/file/EncodingException;
    .restart local v16       #size:J
    :cond_8
    const/16 v20, 0x0

    :try_start_8
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/cordova/FileUtils;->requestFileSystem(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 140
    .local v13, obj:Lorg/json/JSONObject;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/apache/cordova/file/FileExistsException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/apache/cordova/file/NoModificationAllowedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/apache/cordova/file/InvalidModificationException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lorg/apache/cordova/file/EncodingException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lorg/apache/cordova/file/TypeMismatchException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    .line 214
    .end local v13           #obj:Lorg/json/JSONObject;
    .end local v16           #size:J
    :catch_8
    move-exception v6

    .line 215
    .local v6, e:Lorg/apache/cordova/file/TypeMismatchException;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v21, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v22, Lorg/apache/cordova/FileUtils;->TYPE_MISMATCH_ERR:I

    invoke-direct/range {v20 .. v22}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 142
    .end local v6           #e:Lorg/apache/cordova/file/TypeMismatchException;
    :cond_9
    :try_start_9
    const-string v20, "resolveLocalFileSystemURI"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 143
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/cordova/FileUtils;->resolveLocalFileSystemURI(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 144
    .restart local v13       #obj:Lorg/json/JSONObject;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 146
    .end local v13           #obj:Lorg/json/JSONObject;
    :cond_a
    const-string v20, "getMetadata"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 147
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/cordova/FileUtils;->getMetadata(Ljava/lang/String;)J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;F)V

    goto/16 :goto_0

    .line 149
    :cond_b
    const-string v20, "getFileMetadata"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 150
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/cordova/FileUtils;->getFileMetadata(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 151
    .restart local v13       #obj:Lorg/json/JSONObject;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 153
    .end local v13           #obj:Lorg/json/JSONObject;
    :cond_c
    const-string v20, "getParent"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 154
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/cordova/FileUtils;->getParent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 155
    .restart local v13       #obj:Lorg/json/JSONObject;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 157
    .end local v13           #obj:Lorg/json/JSONObject;
    :cond_d
    const-string v20, "getDirectory"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 158
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/cordova/FileUtils;->getFile(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v13

    .line 159
    .restart local v13       #obj:Lorg/json/JSONObject;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 161
    .end local v13           #obj:Lorg/json/JSONObject;
    :cond_e
    const-string v20, "getFile"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 162
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/cordova/FileUtils;->getFile(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v13

    .line 163
    .restart local v13       #obj:Lorg/json/JSONObject;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 165
    .end local v13           #obj:Lorg/json/JSONObject;
    :cond_f
    const-string v20, "remove"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 168
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/cordova/FileUtils;->remove(Ljava/lang/String;)Z

    move-result v19

    .line 170
    .local v19, success:Z
    if-eqz v19, :cond_10

    .line 171
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/cordova/FileUtils;->notifyDelete(Ljava/lang/String;)V

    .line 172
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 174
    :cond_10
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v21, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v22, Lorg/apache/cordova/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    invoke-direct/range {v20 .. v22}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 177
    .end local v19           #success:Z
    :cond_11
    const-string v20, "removeRecursively"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 178
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/cordova/FileUtils;->removeRecursively(Ljava/lang/String;)Z

    move-result v19

    .line 179
    .restart local v19       #success:Z
    if-eqz v19, :cond_12

    .line 180
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 182
    :cond_12
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v21, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v22, Lorg/apache/cordova/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    invoke-direct/range {v20 .. v22}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 185
    .end local v19           #success:Z
    :cond_13
    const-string v20, "moveTo"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 186
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/cordova/FileUtils;->transferTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v8

    .line 187
    .local v8, entry:Lorg/json/JSONObject;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 189
    .end local v8           #entry:Lorg/json/JSONObject;
    :cond_14
    const-string v20, "copyTo"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 190
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/cordova/FileUtils;->transferTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v8

    .line 191
    .restart local v8       #entry:Lorg/json/JSONObject;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 193
    .end local v8           #entry:Lorg/json/JSONObject;
    :cond_15
    const-string v20, "readEntries"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 194
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/cordova/FileUtils;->readEntries(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 195
    .local v7, entries:Lorg/json/JSONArray;
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V

    goto/16 :goto_0

    .line 197
    .end local v7           #entries:Lorg/json/JSONArray;
    :cond_16
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lorg/apache/cordova/file/FileExistsException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/apache/cordova/file/NoModificationAllowedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/apache/cordova/file/InvalidModificationException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lorg/apache/cordova/file/EncodingException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/apache/cordova/file/TypeMismatchException; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_0
.end method

.method public getEntry(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 857
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 859
    .local v0, entry:Lorg/json/JSONObject;
    const-string v1, "isFile"

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 860
    const-string v1, "isDirectory"

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 861
    const-string v1, "name"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 862
    const-string v1, "fullPath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 866
    return-object v0
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 2
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 887
    const-string v1, "testSaveLocationExists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 899
    :cond_0
    :goto_0
    return v0

    .line 890
    :cond_1
    const-string v1, "getFreeDiskSpace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 893
    const-string v1, "testFileExists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 896
    const-string v1, "testDirectoryExists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 899
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readAsDataURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x3e8

    const/4 v10, 0x0

    .line 934
    new-array v3, v11, [B

    .line 935
    .local v3, bytes:[B
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {p0, p1}, Lorg/apache/cordova/FileUtils;->getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    const/16 v9, 0x400

    invoke-direct {v1, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 936
    .local v1, bis:Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 937
    .local v2, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 938
    .local v7, numRead:I
    :goto_0
    invoke-virtual {v1, v3, v10, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_0

    .line 939
    invoke-virtual {v2, v3, v10, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 943
    :cond_0
    const/4 v4, 0x0

    .line 944
    .local v4, contentType:Ljava/lang/String;
    const-string v8, "content:"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 945
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 946
    .local v6, fileUri:Landroid/net/Uri;
    iget-object v8, p0, Lorg/apache/cordova/FileUtils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v8}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 952
    .end local v6           #fileUri:Landroid/net/Uri;
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    .line 953
    .local v0, base64:[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";base64,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 954
    .local v5, data:Ljava/lang/String;
    return-object v5

    .line 949
    .end local v0           #base64:[B
    .end local v5           #data:Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lorg/apache/cordova/FileUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public readAsText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "filename"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x0

    .line 916
    new-array v2, v7, [B

    .line 917
    .local v2, bytes:[B
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, p1}, Lorg/apache/cordova/FileUtils;->getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x400

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 918
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 919
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 920
    .local v3, numRead:I
    :goto_0
    invoke-virtual {v0, v2, v6, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_0

    .line 921
    invoke-virtual {v1, v2, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 923
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v4
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 8
    .parameter "filename"
    .parameter "data"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 978
    invoke-static {p1}, Lorg/apache/cordova/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 980
    const/4 v0, 0x0

    .line 981
    .local v0, append:Z
    if-lez p3, :cond_0

    .line 982
    int-to-long v5, p3

    invoke-direct {p0, p1, v5, v6}, Lorg/apache/cordova/FileUtils;->truncateFile(Ljava/lang/String;J)J

    .line 983
    const/4 v0, 0x1

    .line 986
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 987
    .local v4, rawData:[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 988
    .local v2, in:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 989
    .local v3, out:Ljava/io/FileOutputStream;
    array-length v5, v4

    new-array v1, v5, [B

    .line 990
    .local v1, buff:[B
    array-length v5, v1

    invoke-virtual {v2, v1, v7, v5}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 991
    array-length v5, v4

    invoke-virtual {v3, v1, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 992
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 993
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 995
    array-length v5, v4

    int-to-long v5, v5

    return-wide v5
.end method
