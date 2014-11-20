.class public Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "GoogleAnalyticsTracker.java"


# static fields
.field public static final SET_CUSTOM_DIMENSION:Ljava/lang/String; = "setCustomDimension"

.field public static final START:Ljava/lang/String; = "start"

.field public static final STOP:Ljava/lang/String; = "stop"

.field public static final TRACK_COMMERCE:Ljava/lang/String; = "trackCommerce"

.field public static final TRACK_EVENT:Ljava/lang/String; = "trackEvent"

.field public static final TRACK_PAGE_VIEW:Ljava/lang/String; = "trackPageView"

.field public static final TRACK_SOCIAL:Ljava/lang/String; = "trackSocial"

.field public static final TRACK_TIMING:Ljava/lang/String; = "trackTiming"


# instance fields
.field private instance:Lcom/google/analytics/tracking/android/EasyTracker;

.field private tracker:Lcom/google/analytics/tracking/android/Tracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 35
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->instance:Lcom/google/analytics/tracking/android/EasyTracker;

    .line 37
    return-void
.end method

.method private setCustomDimension(ILjava/lang/String;)V
    .locals 1
    .parameter "Index"
    .parameter "dimensionValue"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-virtual {v0, p1, p2}, Lcom/google/analytics/tracking/android/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 140
    return-void
.end method

.method private start()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->instance:Lcom/google/analytics/tracking/android/EasyTracker;

    iget-object v1, p0, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 117
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 118
    return-void
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->instance:Lcom/google/analytics/tracking/android/EasyTracker;

    iget-object v1, p0, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 122
    return-void
.end method

.method private trackCommerce(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 9
    .parameter "transactionId"
    .parameter "orderTotal"
    .parameter "affiliation"
    .parameter "currencyCode"
    .parameter "SKU"
    .parameter "productName"
    .parameter "productPrice"
    .parameter "productQuantity"
    .parameter "productCategory"

    .prologue
    .line 148
    new-instance v1, Lcom/google/analytics/tracking/android/Transaction$Builder;

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p2

    invoke-direct {v1, p1, v2, v3}, Lcom/google/analytics/tracking/android/Transaction$Builder;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v1, p4}, Lcom/google/analytics/tracking/android/Transaction$Builder;->setAffiliation(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Transaction$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/google/analytics/tracking/android/Transaction$Builder;->setCurrencyCode(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Transaction$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/Transaction$Builder;->build()Lcom/google/analytics/tracking/android/Transaction;

    move-result-object v8

    .line 155
    .local v8, myTrans:Lcom/google/analytics/tracking/android/Transaction;
    new-instance v1, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;

    const-wide/32 v2, 0xf4240

    mul-long v4, p8, v2

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide/from16 v6, p10

    invoke-direct/range {v1 .. v7}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->setProductCategory(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Transaction$Item$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->build()Lcom/google/analytics/tracking/android/Transaction$Item;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/analytics/tracking/android/Transaction;->addItem(Lcom/google/analytics/tracking/android/Transaction$Item;)V

    .line 162
    iget-object v1, p0, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-virtual {v1, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendTransaction(Lcom/google/analytics/tracking/android/Transaction;)V

    .line 163
    return-void
.end method

.method private trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter "category"
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    return-void
.end method

.method private trackPageView(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method private trackSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "network"
    .parameter "action"
    .parameter "target"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/analytics/tracking/android/Tracker;->sendSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private trackTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "category"
    .parameter "loadTime"
    .parameter "name"
    .parameter "label"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/analytics/tracking/android/Tracker;->sendTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 16
    .parameter "action"
    .parameter "data"
    .parameter "callbackContext"

    .prologue
    .line 41
    const/4 v15, 0x0

    .line 42
    .local v15, result:Z
    const-string v1, "start"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-direct/range {p0 .. p0}, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->start()V

    .line 44
    invoke-virtual/range {p3 .. p3}, Lorg/apache/cordova/api/CallbackContext;->success()V

    .line 45
    const/4 v15, 0x1

    .line 112
    :goto_0
    return v15

    .line 46
    :cond_0
    const-string v1, "trackPageView"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p3 .. p3}, Lorg/apache/cordova/api/CallbackContext;->success()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    const/4 v15, 0x1

    goto :goto_0

    .line 51
    :catch_0
    move-exception v14

    .line 52
    .local v14, e:Lorg/json/JSONException;
    const-string v1, "JSON Exception"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 53
    const/4 v15, 0x0

    .line 54
    goto :goto_0

    .line 55
    .end local v14           #e:Lorg/json/JSONException;
    :cond_1
    const-string v1, "trackEvent"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    const/4 v1, 0x0

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 59
    invoke-virtual/range {p3 .. p3}, Lorg/apache/cordova/api/CallbackContext;->success()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    const/4 v15, 0x1

    goto :goto_0

    .line 61
    :catch_1
    move-exception v14

    .line 62
    .restart local v14       #e:Lorg/json/JSONException;
    const-string v1, "JSON Exception"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 63
    const/4 v15, 0x0

    .line 64
    goto :goto_0

    .line 65
    .end local v14           #e:Lorg/json/JSONException;
    :cond_2
    const-string v1, "stop"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    invoke-direct/range {p0 .. p0}, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->stop()V

    .line 67
    invoke-virtual/range {p3 .. p3}, Lorg/apache/cordova/api/CallbackContext;->success()V

    .line 68
    const/4 v15, 0x1

    goto :goto_0

    .line 69
    :cond_3
    const-string v1, "setCustomDimension"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    const/4 v1, 0x0

    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->setCustomDimension(ILjava/lang/String;)V

    .line 72
    invoke-virtual/range {p3 .. p3}, Lorg/apache/cordova/api/CallbackContext;->success()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 73
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 74
    :catch_2
    move-exception v14

    .line 75
    .restart local v14       #e:Lorg/json/JSONException;
    const-string v1, "JSON Exception"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 76
    const/4 v15, 0x0

    .line 77
    goto/16 :goto_0

    .line 78
    .end local v14           #e:Lorg/json/JSONException;
    :cond_4
    const-string v1, "trackTiming"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    const/4 v1, 0x0

    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    const/4 v1, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->trackTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p3 .. p3}, Lorg/apache/cordova/api/CallbackContext;->success()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 83
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 84
    :catch_3
    move-exception v14

    .line 85
    .restart local v14       #e:Lorg/json/JSONException;
    const-string v1, "JSON Exception"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 86
    const/4 v15, 0x0

    .line 87
    goto/16 :goto_0

    .line 88
    .end local v14           #e:Lorg/json/JSONException;
    :cond_5
    const-string v1, "trackSocial"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 90
    const/4 v1, 0x0

    :try_start_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->trackSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p3 .. p3}, Lorg/apache/cordova/api/CallbackContext;->success()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 93
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 94
    :catch_4
    move-exception v14

    .line 95
    .restart local v14       #e:Lorg/json/JSONException;
    const-string v1, "JSON Exception"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 96
    const/4 v15, 0x0

    .line 97
    goto/16 :goto_0

    .line 98
    .end local v14           #e:Lorg/json/JSONException;
    :cond_6
    const-string v1, "trackCommerce"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 100
    const/4 v1, 0x0

    :try_start_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    const/4 v1, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x6

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v9

    const/4 v1, 0x7

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v11

    const/16 v1, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/phonegap/plugins/analytics/GoogleAnalyticsTracker;->trackCommerce(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 102
    invoke-virtual/range {p3 .. p3}, Lorg/apache/cordova/api/CallbackContext;->success()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 103
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 104
    :catch_5
    move-exception v14

    .line 105
    .restart local v14       #e:Lorg/json/JSONException;
    const-string v1, "JSON Exception"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 106
    const/4 v15, 0x0

    .line 107
    goto/16 :goto_0

    .line 109
    .end local v14           #e:Lorg/json/JSONException;
    :cond_7
    const-string v1, "Invalid Action"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 110
    const/4 v15, 0x0

    goto/16 :goto_0
.end method
