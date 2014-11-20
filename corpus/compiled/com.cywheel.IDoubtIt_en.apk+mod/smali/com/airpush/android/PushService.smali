.class public Lcom/airpush/android/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airpush/android/PushService$GetMessageTask;,
        Lcom/airpush/android/PushService$UserInfoTask;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x3e7

.field private static apikey:Ljava/lang/String;

.field private static appId:Ljava/lang/String;

.field private static ctx:Landroid/content/Context;

.field private static icon:I

.field private static imei:Ljava/lang/String;

.field protected static testMode:Z

.field protected static type:Ljava/lang/String;


# instance fields
.field private Message:Ljava/lang/String;

.field private action:Ljava/lang/String;

.field private adType:Ljava/lang/String;

.field private alarmDeliveryMgr:Landroid/app/AlarmManager;

.field private am_pm:Ljava/lang/String;

.field private campId:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private creativeId:Ljava/lang/String;

.field private deliveryDelay:J

.field private deliveryIntent:Landroid/content/Intent;

.field private delivery_time:Ljava/lang/String;

.field private doPush:Z

.field private doSearch:Z

.field private event:Ljava/lang/String;

.field private expiry_time:J

.field private header:Ljava/lang/String;

.field private hour:I

.field private hourstr:Ljava/lang/String;

.field private iconTestMode:Z

.field private id:I

.field private imageurl:Ljava/lang/String;

.field private interstitialTestmode:Z

.field private ip1:Ljava/lang/String;

.field private ip2:Ljava/lang/String;

.field private json:Lorg/json/JSONObject;

.field private link:Ljava/lang/String;

.field private minstr:Ljava/lang/String;

.field private minute:I

.field private nextMessageCheckValue:Ljava/lang/Long;

.field private notificationManager:Landroid/app/NotificationManager;

.field private number:Ljava/lang/String;

.field private pendingDeliveryIntent:Landroid/app/PendingIntent;

.field private phoneNumber:Ljava/lang/String;

.field private pkg:Ljava/lang/String;

.field private response:Lorg/apache/http/HttpEntity;

.field private s:Ljava/lang/String;

.field private send_Task:Ljava/lang/Runnable;

.field private sms:Ljava/lang/String;

.field private smsText:Ljava/lang/String;

.field private smsToNumber:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private tray:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/airpush/android/PushService;->imei:Ljava/lang/String;

    .line 57
    sput-object v0, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 60
    sput-object v0, Lcom/airpush/android/PushService;->type:Ljava/lang/String;

    .line 69
    sput-object v0, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 79
    sput-object v0, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/airpush/android/PushService;->testMode:Z

    .line 104
    const v0, 0x1080074

    sput v0, Lcom/airpush/android/PushService;->icon:I

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 58
    iput-object v1, p0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/airpush/android/PushService;->tray:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/airpush/android/PushService;->action:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/airpush/android/PushService;->event:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/airpush/android/PushService;->url:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/airpush/android/PushService;->Message:Ljava/lang/String;

    .line 68
    const-string v0, "http://api.airpush.com/redirect.php?market="

    iput-object v0, p0, Lcom/airpush/android/PushService;->uri:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/airpush/android/PushService;->json:Lorg/json/JSONObject;

    .line 78
    iput-object v1, p0, Lcom/airpush/android/PushService;->imageurl:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/airpush/android/PushService;->pkg:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/airpush/android/PushService;->hourstr:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/airpush/android/PushService;->minstr:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/airpush/android/PushService;->am_pm:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/airpush/android/PushService;->s:Ljava/lang/String;

    .line 469
    new-instance v0, Lcom/airpush/android/PushService$1;

    invoke-direct {v0, p0}, Lcom/airpush/android/PushService$1;-><init>(Lcom/airpush/android/PushService;)V

    iput-object v0, p0, Lcom/airpush/android/PushService;->send_Task:Ljava/lang/Runnable;

    .line 53
    return-void
.end method

.method private DeliverNotification()V
    .locals 35

    .prologue
    .line 1295
    invoke-direct/range {p0 .. p0}, Lcom/airpush/android/PushService;->selectIcon()I

    move-result v29

    sput v29, Lcom/airpush/android/PushService;->icon:I

    .line 1299
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "W"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "A"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 1301
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "A"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 1302
    new-instance v29, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->uri:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    .line 1309
    :cond_1
    :goto_0
    const-string v29, "settexttracking"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->action:Ljava/lang/String;

    .line 1310
    const-string v29, "trayDelivered"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->event:Ljava/lang/String;

    .line 1311
    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static/range {v29 .. v29}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "model"

    const-string v32, "log"

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "action"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->action:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "APIKEY"

    sget-object v32, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "event"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->event:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "campId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "creativeId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1319
    sget-boolean v29, Lcom/airpush/android/PushService;->testMode:Z

    if-nez v29, :cond_2

    .line 1320
    const-string v29, "AirpushSDK"

    const-string v30, "Posting W&A received values."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v16

    .line 1323
    .local v16, is:Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1325
    .local v5, b:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->read()I

    move-result v7

    .local v7, ch:I
    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v7, v0, :cond_b

    .line 1328
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1329
    .local v24, s:Ljava/lang/String;
    const-string v29, "AirpushSDK"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "W&A Received : "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    .end local v5           #b:Ljava/lang/StringBuffer;
    .end local v7           #ch:I
    .end local v16           #is:Ljava/io/InputStream;
    .end local v24           #s:Ljava/lang/String;
    :cond_2
    const/16 v23, 0x0

    .line 1333
    .local v23, p:Landroid/content/pm/PackageInfo;
    const/4 v14, 0x0

    .line 1334
    .local v14, iconid:I
    const/16 v22, 0x0

    .line 1335
    .local v22, ntitle:I
    const/16 v18, 0x0

    .line 1336
    .local v18, nicon:I
    const/16 v21, 0x0

    .line 1338
    .local v21, ntext:I
    :try_start_1
    const-string v29, "com.android.internal.R$id"

    invoke-static/range {v29 .. v29}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 1339
    .local v8, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v29, "title"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v22

    .line 1340
    const-string v29, "text"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v21

    .line 1341
    const-string v29, "icon"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    .line 1342
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x80

    invoke-virtual/range {v29 .. v31}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v23

    .line 1343
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v14, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 1344
    if-nez v14, :cond_3

    .line 1345
    sget v14, Lcom/airpush/android/PushService;->icon:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1353
    .end local v8           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    :goto_2
    :try_start_2
    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 1354
    const-string v30, "notification"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/NotificationManager;

    .line 1353
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->notificationManager:Landroid/app/NotificationManager;

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1357
    .local v25, text1:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 1358
    .local v10, contentTitle:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 1359
    .local v9, contentText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .line 1363
    .local v27, when:J
    new-instance v19, Landroid/app/Notification;

    sget v29, Lcom/airpush/android/PushService;->icon:I

    move-object/from16 v0, v19

    move/from16 v1, v29

    move-object/from16 v2, v25

    move-wide/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1375
    .local v19, notification:Landroid/app/Notification;
    const/high16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->ledARGB:I

    .line 1376
    const/16 v29, 0x12c

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->ledOffMS:I

    .line 1377
    const/16 v29, 0x12c

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->ledOnMS:I

    .line 1380
    new-instance v26, Landroid/content/Intent;

    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-class v30, Lcom/airpush/android/PushAds;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1381
    .local v26, toLaunch:Landroid/content/Intent;
    const/high16 v29, 0x1000

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1382
    const-string v29, "Web And App"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1384
    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v30, "airpushNotificationPref"

    const/16 v31, 0x2

    invoke-virtual/range {v29 .. v31}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1385
    .local v17, myNotificationPrefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 1386
    .local v20, notificationPrefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v29, "appId"

    sget-object v30, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1387
    const-string v29, "apikey"

    sget-object v30, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1388
    const-string v29, "url"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1389
    const-string v29, "adType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1390
    const-string v29, "tray"

    const-string v30, "trayClicked"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1391
    const-string v29, "campId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1392
    const-string v29, "creativeId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1393
    const-string v29, "header"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->header:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1394
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1396
    const-string v29, "appId"

    sget-object v30, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1397
    const-string v29, "apikey"

    sget-object v30, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1398
    const-string v29, "adType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1399
    const-string v29, "url"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1400
    const-string v29, "campId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1401
    const-string v29, "creativeId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1402
    const-string v29, "tray"

    const-string v30, "trayClicked"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1403
    const-string v29, "header"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->header:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1404
    const-string v29, "testMode"

    sget-boolean v30, Lcom/airpush/android/PushService;->testMode:Z

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1405
    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 1406
    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    const/16 v30, 0x0

    .line 1407
    const/high16 v31, 0x1000

    .line 1405
    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v26

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 1409
    .local v15, intentBack:Landroid/app/PendingIntent;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x4

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1410
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x10

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1411
    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10, v9, v15}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->imageurl:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/airpush/android/HttpPostData;->submitHttpRequest(Ljava/lang/String;Ljava/util/List;)Ljava/io/InputStream;

    move-result-object v13

    .line 1415
    .local v13, iconStrream:Ljava/io/InputStream;
    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1416
    .local v6, bmpIcon:Landroid/graphics/Bitmap;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1417
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1418
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "\t "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move/from16 v1, v21

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1420
    move-object/from16 v0, v19

    iput-object v15, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->notificationManager:Landroid/app/NotificationManager;

    move-object/from16 v29, v0

    const/16 v30, 0x3e7

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1425
    const-string v29, "AirpushSDK"

    const-string v30, "W&A Notification Delivered."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    .end local v6           #bmpIcon:Landroid/graphics/Bitmap;
    .end local v9           #contentText:Ljava/lang/CharSequence;
    .end local v10           #contentTitle:Ljava/lang/CharSequence;
    .end local v13           #iconStrream:Ljava/io/InputStream;
    .end local v14           #iconid:I
    .end local v15           #intentBack:Landroid/app/PendingIntent;
    .end local v17           #myNotificationPrefs:Landroid/content/SharedPreferences;
    .end local v18           #nicon:I
    .end local v19           #notification:Landroid/app/Notification;
    .end local v20           #notificationPrefsEditor:Landroid/content/SharedPreferences$Editor;
    .end local v21           #ntext:I
    .end local v22           #ntitle:I
    .end local v23           #p:Landroid/content/pm/PackageInfo;
    .end local v25           #text1:Ljava/lang/CharSequence;
    .end local v26           #toLaunch:Landroid/content/Intent;
    .end local v27           #when:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "CM"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 1430
    const-string v29, "settexttracking"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->action:Ljava/lang/String;

    .line 1431
    const-string v29, "trayDelivered"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->event:Ljava/lang/String;

    .line 1434
    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static/range {v29 .. v29}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "model"

    const-string v32, "log"

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "action"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->action:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "APIKEY"

    sget-object v32, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "event"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->event:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "campId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "creativeId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1442
    sget-boolean v29, Lcom/airpush/android/PushService;->testMode:Z

    if-nez v29, :cond_5

    .line 1443
    const-string v29, "AirpushSDK"

    const-string v30, "Posting CM received values."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v16

    .line 1446
    .restart local v16       #is:Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1448
    .restart local v5       #b:Ljava/lang/StringBuffer;
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->read()I

    move-result v7

    .restart local v7       #ch:I
    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v7, v0, :cond_c

    .line 1451
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1452
    .restart local v24       #s:Ljava/lang/String;
    const-string v29, "AirpushSDK"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "CM Received : "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    .end local v5           #b:Ljava/lang/StringBuffer;
    .end local v7           #ch:I
    .end local v16           #is:Ljava/io/InputStream;
    .end local v24           #s:Ljava/lang/String;
    :cond_5
    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 1458
    const-string v30, "notification"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/NotificationManager;

    .line 1457
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->notificationManager:Landroid/app/NotificationManager;

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1461
    .restart local v25       #text1:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 1462
    .restart local v10       #contentTitle:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 1463
    .restart local v9       #contentText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .line 1464
    .restart local v27       #when:J
    new-instance v19, Landroid/app/Notification;

    sget v29, Lcom/airpush/android/PushService;->icon:I

    move-object/from16 v0, v19

    move/from16 v1, v29

    move-object/from16 v2, v25

    move-wide/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1475
    .restart local v19       #notification:Landroid/app/Notification;
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1476
    const/high16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->ledARGB:I

    .line 1477
    const/16 v29, 0x12c

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->ledOffMS:I

    .line 1478
    const/16 v29, 0x12c

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->ledOnMS:I

    .line 1479
    new-instance v26, Landroid/content/Intent;

    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-class v30, Lcom/airpush/android/PushAds;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1480
    .restart local v26       #toLaunch:Landroid/content/Intent;
    const/high16 v29, 0x1000

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1481
    const-string v29, "CM"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1483
    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v30, "airpushNotificationPref"

    const/16 v31, 0x2

    invoke-virtual/range {v29 .. v31}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1484
    .restart local v17       #myNotificationPrefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 1485
    .restart local v20       #notificationPrefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v29, "appId"

    sget-object v30, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1486
    const-string v29, "apikey"

    sget-object v30, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1487
    const-string v29, "sms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->sms:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1488
    const-string v29, "number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1489
    const-string v29, "adType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1490
    const-string v29, "tray"

    const-string v30, "trayClicked"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1491
    const-string v29, "campId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1492
    const-string v29, "creativeId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1493
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1495
    const-string v29, "appId"

    sget-object v30, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1496
    const-string v29, "apikey"

    sget-object v30, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1497
    const-string v29, "sms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->sms:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1498
    const-string v29, "number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1499
    const-string v29, "adType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1500
    const-string v29, "tray"

    const-string v30, "trayClicked"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1501
    const-string v29, "campId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1502
    const-string v29, "creativeId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1503
    const-string v29, "testMode"

    sget-boolean v30, Lcom/airpush/android/PushService;->testMode:Z

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1504
    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 1505
    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    const/16 v30, 0x0

    .line 1506
    const/high16 v31, 0x1000

    .line 1504
    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v26

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 1507
    .restart local v15       #intentBack:Landroid/app/PendingIntent;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x4

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1508
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x10

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1509
    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10, v9, v15}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1511
    move-object/from16 v0, v19

    iput-object v15, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->notificationManager:Landroid/app/NotificationManager;

    move-object/from16 v29, v0

    const/16 v30, 0x3e7

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1515
    const-string v29, "AirpushSDK"

    const-string v30, "Notification Delivered"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    .end local v9           #contentText:Ljava/lang/CharSequence;
    .end local v10           #contentTitle:Ljava/lang/CharSequence;
    .end local v15           #intentBack:Landroid/app/PendingIntent;
    .end local v17           #myNotificationPrefs:Landroid/content/SharedPreferences;
    .end local v19           #notification:Landroid/app/Notification;
    .end local v20           #notificationPrefsEditor:Landroid/content/SharedPreferences$Editor;
    .end local v25           #text1:Ljava/lang/CharSequence;
    .end local v26           #toLaunch:Landroid/content/Intent;
    .end local v27           #when:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "CC"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 1520
    const-string v29, "settexttracking"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->action:Ljava/lang/String;

    .line 1521
    const-string v29, "trayDelivered"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->event:Ljava/lang/String;

    .line 1524
    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static/range {v29 .. v29}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 1525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "model"

    const-string v32, "log"

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "action"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->action:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "APIKEY"

    sget-object v32, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "event"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->event:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "campId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "creativeId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1532
    sget-boolean v29, Lcom/airpush/android/PushService;->testMode:Z

    if-nez v29, :cond_7

    .line 1533
    const-string v29, "AirpushSDK"

    const-string v30, "Posting CC received values."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v16

    .line 1536
    .restart local v16       #is:Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1538
    .restart local v5       #b:Ljava/lang/StringBuffer;
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->read()I

    move-result v7

    .restart local v7       #ch:I
    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v7, v0, :cond_d

    .line 1541
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1542
    .restart local v24       #s:Ljava/lang/String;
    const-string v29, "AirpushSDK"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "CC Received : "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    .end local v5           #b:Ljava/lang/StringBuffer;
    .end local v7           #ch:I
    .end local v16           #is:Ljava/io/InputStream;
    .end local v24           #s:Ljava/lang/String;
    :cond_7
    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 1547
    const-string v30, "notification"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/NotificationManager;

    .line 1546
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->notificationManager:Landroid/app/NotificationManager;

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1550
    .restart local v25       #text1:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 1551
    .restart local v10       #contentTitle:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 1552
    .restart local v9       #contentText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .line 1553
    .restart local v27       #when:J
    new-instance v19, Landroid/app/Notification;

    sget v29, Lcom/airpush/android/PushService;->icon:I

    move-object/from16 v0, v19

    move/from16 v1, v29

    move-object/from16 v2, v25

    move-wide/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1564
    .restart local v19       #notification:Landroid/app/Notification;
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1565
    const/high16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->ledARGB:I

    .line 1566
    const/16 v29, 0x12c

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->ledOffMS:I

    .line 1567
    const/16 v29, 0x12c

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->ledOnMS:I

    .line 1570
    new-instance v26, Landroid/content/Intent;

    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-class v30, Lcom/airpush/android/PushAds;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1571
    .restart local v26       #toLaunch:Landroid/content/Intent;
    const/high16 v29, 0x1000

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1572
    const-string v29, "CC"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1573
    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v30, "airpushNotificationPref"

    const/16 v31, 0x2

    invoke-virtual/range {v29 .. v31}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1574
    .restart local v17       #myNotificationPrefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 1575
    .restart local v20       #notificationPrefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v29, "appId"

    sget-object v30, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1576
    const-string v29, "apikey"

    sget-object v30, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1577
    const-string v29, "number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1578
    const-string v29, "adType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1579
    const-string v29, "tray"

    const-string v30, "trayClicked"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1580
    const-string v29, "campId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1581
    const-string v29, "creativeId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1582
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1583
    const-string v29, "appId"

    sget-object v30, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1584
    const-string v29, "apikey"

    sget-object v30, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1585
    const-string v29, "number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1586
    const-string v29, "adType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1587
    const-string v29, "tray"

    const-string v30, "trayClicked"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1588
    const-string v29, "campId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1589
    const-string v29, "creativeId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1590
    const-string v29, "testMode"

    sget-boolean v30, Lcom/airpush/android/PushService;->testMode:Z

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1591
    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 1592
    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    const/16 v30, 0x0

    .line 1593
    const/high16 v31, 0x1000

    .line 1591
    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v26

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 1594
    .restart local v15       #intentBack:Landroid/app/PendingIntent;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x4

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1595
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x10

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1596
    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10, v9, v15}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1598
    move-object/from16 v0, v19

    iput-object v15, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->notificationManager:Landroid/app/NotificationManager;

    move-object/from16 v29, v0

    const/16 v30, 0x3e7

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1602
    const-string v29, "AirpushSDK"

    const-string v30, "Notification Delivered"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1629
    .end local v9           #contentText:Ljava/lang/CharSequence;
    .end local v10           #contentTitle:Ljava/lang/CharSequence;
    .end local v15           #intentBack:Landroid/app/PendingIntent;
    .end local v17           #myNotificationPrefs:Landroid/content/SharedPreferences;
    .end local v19           #notification:Landroid/app/Notification;
    .end local v20           #notificationPrefsEditor:Landroid/content/SharedPreferences$Editor;
    .end local v25           #text1:Ljava/lang/CharSequence;
    .end local v26           #toLaunch:Landroid/content/Intent;
    .end local v27           #when:J
    :cond_8
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1630
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    .line 1631
    .local v12, handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->send_Task:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0x3e8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/airpush/android/PushService;->expiry_time:J

    move-wide/from16 v32, v0

    mul-long v30, v30, v32

    move-object/from16 v0, v29

    move-wide/from16 v1, v30

    invoke-virtual {v12, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1634
    :goto_5
    return-void

    .line 1303
    .end local v12           #handler:Landroid/os/Handler;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "W"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "?"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 1304
    new-instance v29, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->uri:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "&"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->link:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1606
    :catch_0
    move-exception v11

    .line 1608
    .local v11, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v29, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-wide/32 v30, 0x1b7740

    invoke-static/range {v29 .. v31}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 1626
    const-string v29, "AirpushSDK"

    const-string v30, "EMessage Delivered"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1629
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1630
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    .line 1631
    .restart local v12       #handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->send_Task:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0x3e8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/airpush/android/PushService;->expiry_time:J

    move-wide/from16 v32, v0

    mul-long v30, v30, v32

    move-object/from16 v0, v29

    move-wide/from16 v1, v30

    invoke-virtual {v12, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 1305
    .end local v11           #e:Ljava/lang/Exception;
    .end local v12           #handler:Landroid/os/Handler;
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "W"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "?"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_1

    .line 1307
    new-instance v29, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->uri:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "?"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/PushService;->link:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 1628
    :catchall_0
    move-exception v29

    .line 1629
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1630
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    .line 1631
    .restart local v12       #handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/PushService;->send_Task:Ljava/lang/Runnable;

    move-object/from16 v30, v0

    const-wide/16 v31, 0x3e8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/airpush/android/PushService;->expiry_time:J

    move-wide/from16 v33, v0

    mul-long v31, v31, v33

    move-object/from16 v0, v30

    move-wide/from16 v1, v31

    invoke-virtual {v12, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1633
    throw v29

    .line 1326
    .end local v12           #handler:Landroid/os/Handler;
    .restart local v5       #b:Ljava/lang/StringBuffer;
    .restart local v7       #ch:I
    .restart local v16       #is:Ljava/io/InputStream;
    :cond_b
    int-to-char v0, v7

    move/from16 v29, v0

    :try_start_6
    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 1449
    :cond_c
    int-to-char v0, v7

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 1539
    :cond_d
    int-to-char v0, v7

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_4

    .line 1347
    .end local v5           #b:Ljava/lang/StringBuffer;
    .end local v7           #ch:I
    .end local v16           #is:Ljava/io/InputStream;
    .restart local v14       #iconid:I
    .restart local v18       #nicon:I
    .restart local v21       #ntext:I
    .restart local v22       #ntitle:I
    .restart local v23       #p:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v29

    goto/16 :goto_2
.end method

.method static synthetic access$0(Lcom/airpush/android/PushService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airpush/android/PushService;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/airpush/android/PushService;)V
    .locals 0
    .parameter

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/airpush/android/PushService;->startReciever()V

    return-void
.end method

.method static synthetic access$2()Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/airpush/android/PushService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 555
    invoke-direct {p0, p1, p2, p3}, Lcom/airpush/android/PushService;->sendUserInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dateDiff(Ljava/lang/String;Ljava/lang/String;)J
    .locals 11
    .parameter "datFrom"
    .parameter "datTo"

    .prologue
    .line 1272
    const-wide/16 v5, 0x0

    .line 1274
    .local v5, lan:J
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-mm-dd hh:mm:ss"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1275
    .local v0, datFromFormater:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 1277
    .local v1, datFromObj:Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-mm-dd hh:mm:ss"

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1278
    .local v2, datToFormater:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 1280
    .local v3, datToObj:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    sub-long v5, v7, v9

    .line 1288
    .end local v0           #datFromFormater:Ljava/text/SimpleDateFormat;
    .end local v1           #datFromObj:Ljava/util/Date;
    .end local v2           #datToFormater:Ljava/text/SimpleDateFormat;
    .end local v3           #datToObj:Ljava/util/Date;
    :goto_0
    return-wide v5

    .line 1282
    :catch_0
    move-exception v4

    .line 1284
    .local v4, e:Ljava/text/ParseException;
    sget-object v7, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-wide/32 v8, 0x1b7740

    invoke-static {v7, v8, v9}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 1285
    const-string v7, "AirpushSDK"

    const-string v8, "Date Diff .....Failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAdType(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 982
    const/4 v0, 0x0

    .line 984
    .local v0, adType:Ljava/lang/String;
    :try_start_0
    const-string v2, "adtype"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 988
    :goto_0
    return-object v2

    .line 985
    :catch_0
    move-exception v1

    .line 986
    .local v1, e:Lorg/json/JSONException;
    const-string v2, "invalid"

    goto :goto_0
.end method

.method private getCampaignid(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1129
    const/4 v0, 0x0

    .line 1131
    .local v0, campaignid:Ljava/lang/String;
    :try_start_0
    const-string v2, "campaignid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 1152
    :goto_0
    return-object v2

    .line 1132
    :catch_0
    move-exception v1

    .line 1150
    .local v1, e:Lorg/json/JSONException;
    const-string v2, ""

    goto :goto_0
.end method

.method private getClicktoCallAds(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "json"

    .prologue
    const-wide/16 v4, 0x0

    .line 851
    :try_start_0
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getTitle(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 852
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 853
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getNumber(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    .line 854
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getCampaignid(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 855
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getCreativeid(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 857
    iget-object v2, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 858
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getNextMessageCheckTime(Lorg/json/JSONObject;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    .line 860
    iget-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 861
    sget-wide v2, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    .line 864
    :cond_0
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getDeliverTime(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    .line 865
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getExpiryTime(Lorg/json/JSONObject;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airpush/android/PushService;->expiry_time:J

    .line 866
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getImage(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->imageurl:Ljava/lang/String;

    .line 867
    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 868
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 869
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 868
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 870
    .local v1, format0:Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 871
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, currentTime:Ljava/lang/String;
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 874
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 875
    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/airpush/android/PushService;->dateDiff(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airpush/android/PushService;->deliveryDelay:J

    .line 882
    .end local v0           #currentTime:Ljava/lang/String;
    .end local v1           #format0:Ljava/text/SimpleDateFormat;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 885
    invoke-direct {p0}, Lcom/airpush/android/PushService;->DeliverNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :cond_2
    iget-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    .line 914
    :goto_1
    return-void

    .line 879
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 880
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/airpush/android/PushService;->deliveryDelay:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 890
    :catch_0
    move-exception v2

    .line 912
    iget-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    goto :goto_1

    .line 911
    :catchall_0
    move-exception v2

    .line 912
    iget-object v3, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    .line 913
    throw v2
.end method

.method private getClicktoMessageAds(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "json"

    .prologue
    const-wide/16 v4, 0x0

    .line 919
    :try_start_0
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getTitle(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 920
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 921
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getNumber(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    .line 922
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getSms(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->sms:Ljava/lang/String;

    .line 923
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getCampaignid(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 924
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getCreativeid(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 926
    iget-object v2, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 927
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getNextMessageCheckTime(Lorg/json/JSONObject;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    .line 928
    iget-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 929
    sget-wide v2, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    .line 930
    :cond_0
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getDeliverTime(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    .line 931
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getExpiryTime(Lorg/json/JSONObject;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airpush/android/PushService;->expiry_time:J

    .line 932
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getImage(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->imageurl:Ljava/lang/String;

    .line 933
    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 934
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 935
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 934
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 936
    .local v1, format0:Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 937
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, currentTime:Ljava/lang/String;
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 940
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 941
    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/airpush/android/PushService;->dateDiff(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airpush/android/PushService;->deliveryDelay:J

    .line 948
    .end local v0           #currentTime:Ljava/lang/String;
    .end local v1           #format0:Ljava/text/SimpleDateFormat;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 949
    invoke-direct {p0}, Lcom/airpush/android/PushService;->DeliverNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    :cond_2
    iget-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    .line 979
    :goto_1
    return-void

    .line 945
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 946
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/airpush/android/PushService;->deliveryDelay:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 955
    :catch_0
    move-exception v2

    .line 977
    iget-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    goto :goto_1

    .line 976
    :catchall_0
    move-exception v2

    .line 977
    iget-object v3, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    .line 978
    throw v2
.end method

.method private getCountryCode(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1092
    const/4 v0, 0x0

    .line 1094
    .local v0, countryCode:Ljava/lang/String;
    :try_start_0
    const-string v2, "countrycode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 1098
    :goto_0
    return-object v2

    .line 1095
    :catch_0
    move-exception v1

    .line 1096
    .local v1, e:Lorg/json/JSONException;
    const-string v2, ""

    goto :goto_0
.end method

.method private getCreativeid(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1102
    const/4 v0, 0x0

    .line 1104
    .local v0, creativeid:Ljava/lang/String;
    :try_start_0
    const-string v2, "creativeid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 1125
    :goto_0
    return-object v2

    .line 1105
    :catch_0
    move-exception v1

    .line 1123
    .local v1, e:Lorg/json/JSONException;
    const-string v2, ""

    goto :goto_0
.end method

.method private static getDataSharedprefrences()V
    .locals 4

    .prologue
    .line 1647
    :try_start_0
    sget-object v1, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v2, "dataPrefs"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1648
    sget-object v1, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v2, "dataPrefs"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1649
    .local v0, dataPrefs:Landroid/content/SharedPreferences;
    const-string v1, "appId"

    const-string v2, "invalid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 1650
    const-string v1, "apikey"

    const-string v2, "airpush"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 1651
    const-string v1, "imei"

    const-string v2, "invalid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/PushService;->imei:Ljava/lang/String;

    .line 1652
    const-string v1, "testMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/airpush/android/PushService;->testMode:Z

    .line 1653
    const-string v1, "icon"

    const v2, 0x1080074

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/airpush/android/PushService;->icon:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1660
    :cond_0
    :goto_0
    return-void

    .line 1656
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getDeliverTime(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1170
    const/4 v1, 0x0

    .line 1172
    .local v1, nextDeliveryTime:Ljava/lang/String;
    :try_start_0
    const-string v2, "delivery_time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1176
    :goto_0
    return-object v2

    .line 1173
    :catch_0
    move-exception v0

    .line 1174
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "0"

    goto :goto_0
.end method

.method private getExpiryTime(Lorg/json/JSONObject;)Ljava/lang/Long;
    .locals 4
    .parameter "json"

    .prologue
    .line 1190
    const/4 v1, 0x0

    .line 1192
    .local v1, expiryTime:Ljava/lang/Long;
    :try_start_0
    const-string v2, "expirytime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1196
    :goto_0
    return-object v2

    .line 1193
    :catch_0
    move-exception v0

    .line 1194
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "86400000"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0
.end method

.method private getHeader(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1210
    const/4 v1, 0x0

    .line 1212
    .local v1, head:Ljava/lang/String;
    :try_start_0
    const-string v2, "header"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1216
    :goto_0
    return-object v2

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "Advertisment"

    goto :goto_0
.end method

.method private getImage(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1200
    const/4 v1, 0x0

    .line 1202
    .local v1, img:Ljava/lang/String;
    :try_start_0
    const-string v2, "adimage"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1206
    :goto_0
    return-object v2

    .line 1203
    :catch_0
    move-exception v0

    .line 1204
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "http://beta.airpush.com/images/adsthumbnail/48.png"

    goto :goto_0
.end method

.method private getIpAddress1(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1220
    const/4 v1, 0x0

    .line 1222
    .local v1, ip:Ljava/lang/String;
    :try_start_0
    const-string v2, "ip1"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1226
    :goto_0
    return-object v2

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "invalid"

    goto :goto_0
.end method

.method private getIpAddress2(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1230
    const/4 v1, 0x0

    .line 1232
    .local v1, ip:Ljava/lang/String;
    :try_start_0
    const-string v2, "ip1"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1236
    :goto_0
    return-object v2

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "invalid"

    goto :goto_0
.end method

.method private getMessageDetails(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1180
    const/4 v1, 0x0

    .line 1182
    .local v1, msg:Ljava/lang/String;
    :try_start_0
    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1186
    :goto_0
    return-object v2

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "nothing"

    goto :goto_0
.end method

.method private getNextMessageCheckTime(Lorg/json/JSONObject;)J
    .locals 6
    .parameter "json"

    .prologue
    const-wide/16 v4, 0x3e8

    .line 1157
    const-string v2, "300"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1160
    .local v1, nextMsgCheckTime:Ljava/lang/Long;
    :try_start_0
    const-string v2, "nextmessagecheck"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1166
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    .line 1162
    :catch_0
    move-exception v0

    .line 1164
    .local v0, e:Ljava/lang/Exception;
    sget-wide v2, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    goto :goto_0
.end method

.method private getNumber(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1038
    const/4 v1, 0x0

    .line 1040
    .local v1, number:Ljava/lang/String;
    :try_start_0
    const-string v2, "number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1061
    :goto_0
    return-object v2

    .line 1041
    :catch_0
    move-exception v0

    .line 1059
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "0"

    goto :goto_0
.end method

.method private getSms(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1065
    const/4 v1, 0x0

    .line 1067
    .local v1, sms:Ljava/lang/String;
    :try_start_0
    const-string v2, "sms"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1088
    :goto_0
    return-object v2

    .line 1068
    :catch_0
    move-exception v0

    .line 1086
    .local v0, e:Lorg/json/JSONException;
    const-string v2, ""

    goto :goto_0
.end method

.method private getText(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1001
    const/4 v1, 0x0

    .line 1003
    .local v1, text:Ljava/lang/String;
    :try_start_0
    const-string v2, "text"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1007
    :goto_0
    return-object v2

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "Click here for details!"

    goto :goto_0
.end method

.method private getTitle(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 992
    const/4 v1, 0x0

    .line 994
    .local v1, title:Ljava/lang/String;
    :try_start_0
    const-string v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 998
    :goto_0
    return-object v2

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "New Message"

    goto :goto_0
.end method

.method private getUrl(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "json"

    .prologue
    .line 1011
    const/4 v1, 0x0

    .line 1013
    .local v1, url:Ljava/lang/String;
    :try_start_0
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1034
    :goto_0
    return-object v2

    .line 1014
    :catch_0
    move-exception v0

    .line 1032
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "nothing"

    goto :goto_0
.end method

.method private getWebAndAppAds(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "json"

    .prologue
    const-wide/16 v4, 0x0

    .line 783
    :try_start_0
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getTitle(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 784
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 785
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getUrl(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    .line 786
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getCampaignid(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 787
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getHeader(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->header:Ljava/lang/String;

    .line 788
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getCreativeid(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 790
    iget-object v2, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    const-string v3, "nothing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 791
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getNextMessageCheckTime(Lorg/json/JSONObject;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    .line 793
    iget-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 794
    sget-wide v2, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    .line 797
    :cond_0
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getDeliverTime(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    .line 798
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getExpiryTime(Lorg/json/JSONObject;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airpush/android/PushService;->expiry_time:J

    .line 799
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->getImage(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->imageurl:Ljava/lang/String;

    .line 800
    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 801
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 802
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 801
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 803
    .local v1, format0:Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 804
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, currentTime:Ljava/lang/String;
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 807
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 808
    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/airpush/android/PushService;->dateDiff(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/airpush/android/PushService;->deliveryDelay:J

    .line 817
    .end local v0           #currentTime:Ljava/lang/String;
    .end local v1           #format0:Ljava/text/SimpleDateFormat;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/airpush/android/PushService;->DeliverNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :cond_2
    iget-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    .line 847
    :goto_1
    return-void

    .line 813
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/airpush/android/PushService;->delivery_time:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 814
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/airpush/android/PushService;->deliveryDelay:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 822
    :catch_0
    move-exception v2

    .line 844
    iget-object v2, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    goto :goto_1

    .line 843
    :catchall_0
    move-exception v2

    .line 844
    iget-object v3, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    .line 846
    throw v2
.end method

.method private resetAlarm(J)V
    .locals 9
    .parameter "resetTime"

    .prologue
    .line 1243
    :try_start_0
    invoke-static {}, Lcom/airpush/android/PushService;->getDataSharedprefrences()V

    .line 1244
    const-string v1, "AirpushSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ResetTime : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    new-instance v8, Landroid/content/Intent;

    sget-object v1, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-class v2, Lcom/airpush/android/MessageReceiver;

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1248
    .local v8, messageIntent:Landroid/content/Intent;
    const-string v1, "SetMessageReceiver"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1249
    const-string v1, "appId"

    sget-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1250
    const-string v1, "apikey"

    sget-object v2, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1251
    const-string v1, "imei"

    sget-object v2, Lcom/airpush/android/PushService;->imei:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1252
    const-string v1, "testMode"

    sget-boolean v2, Lcom/airpush/android/PushService;->testMode:Z

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1253
    const-string v1, "doSearch"

    iget-boolean v2, p0, Lcom/airpush/android/PushService;->doSearch:Z

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1254
    const-string v1, "doPush"

    iget-boolean v2, p0, Lcom/airpush/android/PushService;->doPush:Z

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1256
    const-string v1, "icontestmode"

    iget-boolean v2, p0, Lcom/airpush/android/PushService;->iconTestMode:Z

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1259
    sget-object v1, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1260
    .local v6, pendingMessageIntent:Landroid/app/PendingIntent;
    sget-object v1, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1262
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    sget-wide v4, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v6           #pendingMessageIntent:Landroid/app/PendingIntent;
    .end local v8           #messageIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1264
    :catch_0
    move-exception v7

    .line 1266
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "AirpushSDK"

    const-string v2, "ResetAlarm Error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    sget-object v1, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method private selectIcon()I
    .locals 5

    .prologue
    .line 1636
    const v0, 0x1080074

    .line 1637
    .local v0, icon:I
    sget-object v1, Lcom/airpush/android/Constants;->icons:[I

    .line 1638
    .local v1, icons:[I
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 1639
    .local v3, rand:Ljava/util/Random;
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 1640
    .local v2, num:I
    aget v0, v1, v2

    .line 1642
    return v0
.end method

.method private sendUserInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "airpushAppid"
    .parameter "apikey"

    .prologue
    .line 556
    invoke-static {p1}, Lcom/airpush/android/Airpush;->isEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 559
    :try_start_0
    sget-object v6, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 560
    iget-object v6, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "model"

    const-string v9, "user"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v6, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "action"

    const-string v9, "setuserinfo"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object v6, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "APIKEY"

    invoke-direct {v7, v8, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v6, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "type"

    const-string v9, "app"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    const-string v6, "Activity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "UserInfo Values >>>>>>: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v6, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    sget-object v7, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 567
    .local v3, entity:Lorg/apache/http/HttpEntity;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 614
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    :goto_0
    return-void

    .line 570
    .restart local v3       #entity:Lorg/apache/http/HttpEntity;
    :cond_0
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 571
    .local v4, is:Ljava/io/InputStream;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 573
    .local v0, b:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 577
    .local v5, s:Ljava/lang/String;
    const-string v6, "AirpushSDK"

    const-string v7, "User Info Sent."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    sget-boolean v6, Lcom/airpush/android/Constants;->sendDBLog:Z

    if-eqz v6, :cond_1

    .line 579
    iget-object v6, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "UserInfoReturnMessage"

    invoke-direct {v7, v8, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v6, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    sget-object v7, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/airpush/android/HttpPostData;->sendTestLogs(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    .line 582
    :cond_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sendUserInfo >>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 588
    .end local v0           #b:Ljava/lang/StringBuffer;
    .end local v1           #ch:I
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 591
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "Activitymanager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "User Info Sending Failed..... : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string v6, "Activitymanager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    sget-object v6, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-wide/32 v7, 0x1b7740

    invoke-static {v6, v7, v8}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    goto :goto_0

    .line 574
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #b:Ljava/lang/StringBuffer;
    .restart local v1       #ch:I
    .restart local v3       #entity:Lorg/apache/http/HttpEntity;
    .restart local v4       #is:Ljava/io/InputStream;
    :cond_2
    int-to-char v6, v1

    :try_start_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 612
    .end local v0           #b:Ljava/lang/StringBuffer;
    .end local v1           #ch:I
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #is:Ljava/io/InputStream;
    :cond_3
    const-string v6, "AirpushSDK"

    const-string v7, "Airpush is disabled, please enable to receive ads."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startReciever()V
    .locals 9

    .prologue
    .line 617
    sget-object v5, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/airpush/android/Airpush;->isEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 618
    const-string v5, "AirpushSDK"

    const-string v6, "Receiving......."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :try_start_0
    sget-object v5, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 622
    iget-object v5, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "model"

    const-string v8, "message"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    iget-object v5, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "action"

    const-string v8, "getmessage"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v5, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "APIKEY"

    sget-object v8, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    const-string v5, "SMSActManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SMSMsgData...."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    sget-object v5, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    sget-object v6, Lcom/airpush/android/PushService;->imei:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 628
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/airpush/android/PushService;->s:Ljava/lang/String;

    .line 630
    iget-object v5, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    sget-boolean v6, Lcom/airpush/android/PushService;->testMode:Z

    sget-object v7, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v5, v6, v7}, Lcom/airpush/android/HttpPostData;->postData3(Ljava/util/List;ZLandroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 631
    .local v4, response:Lorg/apache/http/HttpEntity;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 681
    .end local v4           #response:Lorg/apache/http/HttpEntity;
    :goto_0
    return-void

    .line 636
    .restart local v4       #response:Lorg/apache/http/HttpEntity;
    :cond_0
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 637
    .local v3, is:Ljava/io/InputStream;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 639
    .local v0, b:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    .line 642
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airpush/android/PushService;->s:Ljava/lang/String;

    .line 643
    sget-boolean v5, Lcom/airpush/android/Constants;->sendDBLog:Z

    if-eqz v5, :cond_1

    .line 644
    iget-object v5, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "PushReturnMessage"

    iget-object v8, p0, Lcom/airpush/android/PushService;->s:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    iget-object v5, p0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    sget-object v6, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/airpush/android/HttpPostData;->sendTestLogs(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    .line 647
    :cond_1
    const-string v5, "Activity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Push Message : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/airpush/android/PushService;->s:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v5, p0, Lcom/airpush/android/PushService;->s:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/airpush/android/PushService;->parseJson(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 654
    .end local v0           #b:Ljava/lang/StringBuffer;
    .end local v1           #ch:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #response:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v2

    .line 656
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "Activitymanager"

    const-string v6, "Message Fetching Failed....."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string v5, "Activitymanager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    sget-object v5, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "json"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 659
    sget-object v5, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Message "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/airpush/android/PushService;->s:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 660
    sget-object v5, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-wide/32 v6, 0x1b7740

    invoke-static {v5, v6, v7}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 640
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #b:Ljava/lang/StringBuffer;
    .restart local v1       #ch:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #response:Lorg/apache/http/HttpEntity;
    :cond_2
    int-to-char v5, v1

    :try_start_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 679
    .end local v0           #b:Ljava/lang/StringBuffer;
    .end local v1           #ch:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #response:Lorg/apache/http/HttpEntity;
    :cond_3
    const-string v5, "AirpushSDK"

    const-string v6, "Airpush is disabled, please enable to receive ads."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 547
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 548
    const-string v0, "AirpushSDK"

    const-string v1, "Service Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 540
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 541
    const-string v0, "AirpushSDK"

    const-string v1, "Low On Memory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 17
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 117
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 121
    .local v16, startIdObj:Ljava/lang/Integer;
    :try_start_0
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 122
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->type:Ljava/lang/String;

    .line 123
    const-string v2, "apikey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 126
    sget-object v2, Lcom/airpush/android/PushService;->type:Ljava/lang/String;

    const-string v3, "PostAdValues"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 127
    const-string v2, "adType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v3, "Interstitial"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 132
    const-string v2, "apikey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 133
    const-string v2, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 134
    const-string v2, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 135
    const-string v2, "Test"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/airpush/android/PushService;->interstitialTestmode:Z

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "model"

    const-string v5, "log"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "action"

    const-string v5, "settexttracking"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "APIKEY"

    sget-object v5, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "event"

    const-string v5, "TrayClicked"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "campId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "creativeId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/airpush/android/PushService;->interstitialTestmode:Z

    if-nez v2, :cond_0

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    .line 158
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v3, "CC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    const-string v2, "testMode"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/airpush/android/PushService;->testMode:Z

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "airpushNotificationPref"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "airpushNotificationPref"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 164
    .local v9, NotificationPrefs:Landroid/content/SharedPreferences;
    const-string v2, "appId"

    const-string v3, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 165
    const-string v2, "apikey"

    const-string v3, "apikey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 166
    const-string v2, "number"

    const-string v3, "number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->phoneNumber:Ljava/lang/String;

    .line 167
    const-string v2, "campId"

    const-string v3, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 168
    const-string v2, "creativeId"

    const-string v3, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 179
    .end local v9           #NotificationPrefs:Landroid/content/SharedPreferences;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "model"

    const-string v5, "log"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "action"

    const-string v5, "settexttracking"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "APIKEY"

    sget-object v5, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "event"

    const-string v5, "TrayClicked"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "campId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "creativeId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    sget-boolean v2, Lcom/airpush/android/PushService;->testMode:Z

    if-nez v2, :cond_1

    .line 189
    const-string v2, "AirpushSDK"

    const-string v3, "Posting CC values"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    .line 192
    .local v14, is:Ljava/io/InputStream;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 194
    .local v10, b:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v11

    .local v11, ch:I
    const/4 v2, -0x1

    if-ne v11, v2, :cond_7

    .line 197
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 198
    .local v15, s:Ljava/lang/String;
    const-string v2, "AirpushSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CC Click : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v10           #b:Ljava/lang/StringBuffer;
    .end local v11           #ch:I
    .end local v14           #is:Ljava/io/InputStream;
    .end local v15           #s:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v3, "CM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    const-string v2, "testMode"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/airpush/android/PushService;->testMode:Z

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "airpushNotificationPref"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "airpushNotificationPref"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 209
    .restart local v9       #NotificationPrefs:Landroid/content/SharedPreferences;
    const-string v2, "appId"

    const-string v3, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 210
    const-string v2, "apikey"

    const-string v3, "apikey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 211
    const-string v2, "sms"

    const-string v3, "sms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->smsText:Ljava/lang/String;

    .line 212
    const-string v2, "campId"

    const-string v3, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 213
    const-string v2, "creativeId"

    const-string v3, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 214
    const-string v2, "number"

    const-string v3, "number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->smsToNumber:Ljava/lang/String;

    .line 232
    .end local v9           #NotificationPrefs:Landroid/content/SharedPreferences;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "model"

    const-string v5, "log"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "action"

    const-string v5, "settexttracking"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "APIKEY"

    sget-object v5, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "event"

    const-string v5, "TrayClicked"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "campId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "creativeId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-boolean v2, Lcom/airpush/android/PushService;->testMode:Z

    if-nez v2, :cond_2

    .line 243
    const-string v2, "AirpushSDK"

    const-string v3, "Posting CM values"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    .line 246
    .restart local v14       #is:Ljava/io/InputStream;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 248
    .restart local v10       #b:Ljava/lang/StringBuffer;
    :goto_3
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v11

    .restart local v11       #ch:I
    const/4 v2, -0x1

    if-ne v11, v2, :cond_a

    .line 251
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 252
    .restart local v15       #s:Ljava/lang/String;
    const-string v2, "AirpushSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CM Click : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v10           #b:Ljava/lang/StringBuffer;
    .end local v11           #ch:I
    .end local v14           #is:Ljava/io/InputStream;
    .end local v15           #s:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 258
    :cond_3
    const-string v2, "testMode"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/airpush/android/PushService;->testMode:Z

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "airpushNotificationPref"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "airpushNotificationPref"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 262
    .restart local v9       #NotificationPrefs:Landroid/content/SharedPreferences;
    const-string v2, "appId"

    const-string v3, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 263
    const-string v2, "apikey"

    const-string v3, "apikey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 264
    const-string v2, "url"

    const-string v3, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->url:Ljava/lang/String;

    .line 265
    const-string v2, "campId"

    const-string v3, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 266
    const-string v2, "creativeId"

    const-string v3, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 267
    const-string v2, "header"

    const-string v3, "header"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->header:Ljava/lang/String;

    .line 284
    .end local v9           #NotificationPrefs:Landroid/content/SharedPreferences;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "model"

    const-string v5, "log"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "action"

    const-string v5, "settexttracking"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "APIKEY"

    sget-object v5, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "event"

    const-string v5, "TrayClicked"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "campId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "creativeId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    sget-boolean v2, Lcom/airpush/android/PushService;->testMode:Z

    if-nez v2, :cond_4

    .line 296
    const-string v2, "AirpushSDK"

    const-string v3, "Posting W&A values."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->values:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->response:Lorg/apache/http/HttpEntity;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    .line 299
    .restart local v14       #is:Ljava/io/InputStream;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 301
    .restart local v10       #b:Ljava/lang/StringBuffer;
    :goto_5
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v11

    .restart local v11       #ch:I
    const/4 v2, -0x1

    if-ne v11, v2, :cond_c

    .line 304
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 305
    .restart local v15       #s:Ljava/lang/String;
    const-string v2, "AirpushSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "W&A Click : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v10           #b:Ljava/lang/StringBuffer;
    .end local v11           #ch:I
    .end local v14           #is:Ljava/io/InputStream;
    .end local v15           #s:Ljava/lang/String;
    :cond_4
    :goto_6
    if-eqz v16, :cond_5

    .line 462
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/airpush/android/PushService;->stopSelf(I)V

    .line 466
    :cond_5
    :goto_7
    return-void

    .line 171
    :cond_6
    :try_start_1
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 172
    const-string v2, "apikey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 173
    const-string v2, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 174
    const-string v2, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 175
    const-string v2, "number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->phoneNumber:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 436
    :catch_0
    move-exception v13

    .line 438
    .local v13, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lcom/airpush/android/Airpush;

    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    const-string v5, "airpush"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/airpush/android/Airpush;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    if-eqz v16, :cond_5

    .line 462
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/airpush/android/PushService;->stopSelf(I)V

    goto :goto_7

    .line 195
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v10       #b:Ljava/lang/StringBuffer;
    .restart local v11       #ch:I
    .restart local v14       #is:Ljava/io/InputStream;
    :cond_7
    int-to-char v2, v11

    :try_start_3
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 459
    .end local v10           #b:Ljava/lang/StringBuffer;
    .end local v11           #ch:I
    .end local v14           #is:Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .line 460
    if-eqz v16, :cond_8

    .line 462
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/airpush/android/PushService;->stopSelf(I)V

    .line 464
    :cond_8
    throw v2

    .line 218
    :cond_9
    :try_start_4
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 219
    const-string v2, "apikey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 220
    const-string v2, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 221
    const-string v2, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 222
    const-string v2, "sms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->smsText:Ljava/lang/String;

    .line 223
    const-string v2, "number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->smsToNumber:Ljava/lang/String;

    goto/16 :goto_2

    .line 249
    .restart local v10       #b:Ljava/lang/StringBuffer;
    .restart local v11       #ch:I
    .restart local v14       #is:Ljava/io/InputStream;
    :cond_a
    int-to-char v2, v11

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 271
    .end local v10           #b:Ljava/lang/StringBuffer;
    .end local v11           #ch:I
    .end local v14           #is:Ljava/io/InputStream;
    :cond_b
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 272
    const-string v2, "apikey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->apikey:Ljava/lang/String;

    .line 273
    const-string v2, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 274
    const-string v2, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 275
    const-string v2, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->url:Ljava/lang/String;

    .line 276
    const-string v2, "header"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->header:Ljava/lang/String;

    goto/16 :goto_4

    .line 302
    .restart local v10       #b:Ljava/lang/StringBuffer;
    .restart local v11       #ch:I
    .restart local v14       #is:Ljava/io/InputStream;
    :cond_c
    int-to-char v2, v11

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 309
    .end local v10           #b:Ljava/lang/StringBuffer;
    .end local v11           #ch:I
    .end local v14           #is:Ljava/io/InputStream;
    :cond_d
    sget-object v2, Lcom/airpush/android/PushService;->type:Ljava/lang/String;

    const-string v3, "userInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 310
    sget-object v2, Lcom/airpush/android/UserDetailsReceiver;->ctx:Landroid/content/Context;

    sput-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 312
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v3, "dataPrefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 313
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v3, "dataPrefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 314
    .local v12, dataPrefs:Landroid/content/SharedPreferences;
    const-string v2, "imei"

    const-string v3, "invalid"

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->imei:Ljava/lang/String;

    .line 320
    .end local v12           #dataPrefs:Landroid/content/SharedPreferences;
    :cond_e
    new-instance v2, Lcom/airpush/android/PushService$UserInfoTask;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/airpush/android/PushService$UserInfoTask;-><init>(Lcom/airpush/android/PushService;Lcom/airpush/android/PushService$UserInfoTask;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/airpush/android/PushService$UserInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_6

    .line 323
    :cond_f
    sget-object v2, Lcom/airpush/android/PushService;->type:Ljava/lang/String;

    const-string v3, "message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 325
    sget-object v2, Lcom/airpush/android/MessageReceiver;->ctx:Landroid/content/Context;

    sput-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 327
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v3, "dataPrefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 328
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    const-string v3, "dataPrefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 329
    .restart local v12       #dataPrefs:Landroid/content/SharedPreferences;
    const-string v2, "imei"

    const-string v3, "invalid"

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->imei:Ljava/lang/String;

    .line 332
    .end local v12           #dataPrefs:Landroid/content/SharedPreferences;
    :cond_10
    const-string v2, "testMode"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/airpush/android/PushService;->testMode:Z

    .line 333
    const-string v2, "icon"

    const v3, 0x1080074

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/airpush/android/PushService;->icon:I

    .line 334
    const-string v2, "doSearch"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/airpush/android/PushService;->doSearch:Z

    .line 335
    const-string v2, "icontestmode"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/airpush/android/PushService;->iconTestMode:Z

    .line 336
    const-string v2, "doPush"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/airpush/android/PushService;->doPush:Z

    .line 337
    const-string v2, "AirpushSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Search Icon Enabled : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/airpush/android/PushService;->doSearch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v2, "AirpushSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Push Enabled : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/airpush/android/PushService;->doPush:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/airpush/android/PushService;->doSearch:Z

    if-eqz v2, :cond_11

    .line 340
    new-instance v2, Lcom/airpush/android/Airpush;

    invoke-direct {v2}, Lcom/airpush/android/Airpush;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/airpush/android/PushService;->iconTestMode:Z

    invoke-virtual {v2, v3}, Lcom/airpush/android/Airpush;->createSearch(Z)V

    .line 345
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/airpush/android/PushService;->doPush:Z

    if-eqz v2, :cond_12

    .line 346
    new-instance v2, Lcom/airpush/android/PushService$GetMessageTask;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/airpush/android/PushService$GetMessageTask;-><init>(Lcom/airpush/android/PushService;Lcom/airpush/android/PushService$GetMessageTask;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/airpush/android/PushService$GetMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_6

    .line 348
    :cond_12
    sget-wide v2, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/airpush/android/PushService;->resetAlarm(J)V

    goto/16 :goto_6

    .line 353
    :cond_13
    sget-object v2, Lcom/airpush/android/PushService;->type:Ljava/lang/String;

    const-string v3, "delivery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 355
    sget-object v2, Lcom/airpush/android/DeliveryReceiver;->ctx:Landroid/content/Context;

    sput-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    .line 356
    const-string v2, "adType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 358
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 362
    const-string v2, "link"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    .line 363
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 364
    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 365
    const-string v2, "imageurl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->imageurl:Ljava/lang/String;

    .line 366
    const-string v2, "expiry_time"

    const-wide/16 v3, 0x3c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airpush/android/PushService;->expiry_time:J

    .line 367
    const-string v2, "header"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->header:Ljava/lang/String;

    .line 368
    const-string v2, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 369
    const-string v2, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 372
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airpush/android/PushService;->Message:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 375
    invoke-direct/range {p0 .. p0}, Lcom/airpush/android/PushService;->DeliverNotification()V

    .line 377
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 378
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 382
    const-string v2, "link"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->link:Ljava/lang/String;

    .line 383
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 384
    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 385
    const-string v2, "imageurl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->imageurl:Ljava/lang/String;

    .line 386
    const-string v2, "expiry_time"

    const-wide/16 v3, 0x3c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airpush/android/PushService;->expiry_time:J

    .line 387
    const-string v2, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 388
    const-string v2, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 391
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airpush/android/PushService;->Message:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 395
    invoke-direct/range {p0 .. p0}, Lcom/airpush/android/PushService;->DeliverNotification()V

    .line 397
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v3, "CC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 398
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 402
    const-string v2, "number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    .line 403
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 404
    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 405
    const-string v2, "imageurl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->imageurl:Ljava/lang/String;

    .line 406
    const-string v2, "expiry_time"

    const-wide/16 v3, 0x3c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airpush/android/PushService;->expiry_time:J

    .line 407
    const-string v2, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 408
    const-string v2, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 411
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airpush/android/PushService;->Message:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 413
    invoke-direct/range {p0 .. p0}, Lcom/airpush/android/PushService;->DeliverNotification()V

    .line 415
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v3, "CM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 416
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushService;->appId:Ljava/lang/String;

    .line 420
    const-string v2, "number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->number:Ljava/lang/String;

    .line 421
    const-string v2, "sms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->sms:Ljava/lang/String;

    .line 422
    const-string v2, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->text:Ljava/lang/String;

    .line 423
    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->title:Ljava/lang/String;

    .line 424
    const-string v2, "imageurl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->imageurl:Ljava/lang/String;

    .line 425
    const-string v2, "expiry_time"

    const-wide/16 v3, 0x3c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airpush/android/PushService;->expiry_time:J

    .line 426
    const-string v2, "campId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->campId:Ljava/lang/String;

    .line 427
    const-string v2, "creativeId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airpush/android/PushService;->creativeId:Ljava/lang/String;

    .line 430
    sget-object v2, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airpush/android/PushService;->Message:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 433
    invoke-direct/range {p0 .. p0}, Lcom/airpush/android/PushService;->DeliverNotification()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_6
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 686
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized parseJson(Ljava/lang/String;)V
    .locals 10
    .parameter "jsonString"

    .prologue
    .line 690
    monitor-enter p0

    :try_start_0
    sget-object v7, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 692
    sget-wide v7, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    .line 693
    const-wide/16 v0, 0x0

    .line 694
    .local v0, deliveryDelay:J
    const/4 v2, 0x0

    .line 697
    .local v2, delivery_time:Ljava/lang/Object;
    const/4 v6, 0x0

    .line 698
    .local v6, message:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 699
    .local v4, json:Lorg/json/JSONObject;
    const-string v7, "nextmessagecheck"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    .line 702
    :try_start_1
    sget-object v7, Lcom/airpush/android/PushService;->ctx:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 703
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 704
    .end local v4           #json:Lorg/json/JSONObject;
    .local v5, json:Lorg/json/JSONObject;
    :try_start_2
    invoke-direct {p0, v5}, Lcom/airpush/android/PushService;->getNextMessageCheckTime(Lorg/json/JSONObject;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    .line 705
    invoke-direct {p0, v5}, Lcom/airpush/android/PushService;->getAdType(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    .line 715
    iget-object v7, p0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v8, "invalid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 716
    iget-object v7, p0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v8, "W"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v8, "A"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 717
    :cond_0
    invoke-direct {p0, v5}, Lcom/airpush/android/PushService;->getWebAndAppAds(Lorg/json/JSONObject;)V

    .line 719
    :cond_1
    iget-object v7, p0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v8, "CC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 720
    invoke-direct {p0, v5}, Lcom/airpush/android/PushService;->getClicktoCallAds(Lorg/json/JSONObject;)V

    .line 722
    :cond_2
    iget-object v7, p0, Lcom/airpush/android/PushService;->adType:Ljava/lang/String;

    const-string v8, "CM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 723
    invoke-direct {p0, v5}, Lcom/airpush/android/PushService;->getClicktoMessageAds(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v5

    .line 779
    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 727
    .end local v4           #json:Lorg/json/JSONObject;
    .restart local v5       #json:Lorg/json/JSONObject;
    :cond_4
    :try_start_3
    iget-object v7, p0, Lcom/airpush/android/PushService;->nextMessageCheckValue:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/airpush/android/PushService;->resetAlarm(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, v5

    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    goto :goto_0

    .line 732
    :catch_0
    move-exception v3

    .line 753
    .local v3, je:Lorg/json/JSONException;
    :goto_1
    :try_start_4
    const-string v7, "AirpushSDK"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Message Parsing.....Failed : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 690
    .end local v0           #deliveryDelay:J
    .end local v2           #delivery_time:Ljava/lang/Object;
    .end local v3           #je:Lorg/json/JSONException;
    .end local v4           #json:Lorg/json/JSONObject;
    .end local v6           #message:Ljava/lang/Object;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 755
    .restart local v0       #deliveryDelay:J
    .restart local v2       #delivery_time:Ljava/lang/Object;
    .restart local v4       #json:Lorg/json/JSONObject;
    .restart local v6       #message:Ljava/lang/Object;
    :catch_1
    move-exception v7

    goto :goto_0

    .end local v4           #json:Lorg/json/JSONObject;
    .restart local v5       #json:Lorg/json/JSONObject;
    :catch_2
    move-exception v7

    move-object v4, v5

    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    goto :goto_0

    .line 732
    .end local v4           #json:Lorg/json/JSONObject;
    .restart local v5       #json:Lorg/json/JSONObject;
    :catch_3
    move-exception v3

    move-object v4, v5

    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    goto :goto_1

    .end local v4           #json:Lorg/json/JSONObject;
    .restart local v5       #json:Lorg/json/JSONObject;
    :cond_5
    move-object v4, v5

    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    goto :goto_0
.end method
