.class public Lcom/airpush/android/DeliveryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeliveryReceiver.java"


# static fields
.field protected static ctx:Landroid/content/Context;


# instance fields
.field private action:Ljava/lang/String;

.field private apikey:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private campId:Ljava/lang/String;

.field private creativeId:Ljava/lang/String;

.field private event:Ljava/lang/String;

.field private expiry_time:Ljava/lang/Long;

.field private header:Ljava/lang/String;

.field private imageurl:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private sms:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private tray:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field values:Ljava/util/List;
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
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/airpush/android/DeliveryReceiver;->ctx:Landroid/content/Context;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/airpush/android/DeliveryReceiver;->values:Ljava/util/List;

    .line 13
    iput-object v1, p0, Lcom/airpush/android/DeliveryReceiver;->imei:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/airpush/android/DeliveryReceiver;->appId:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/airpush/android/DeliveryReceiver;->text:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/airpush/android/DeliveryReceiver;->link:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/airpush/android/DeliveryReceiver;->campId:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/airpush/android/DeliveryReceiver;->creativeId:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/airpush/android/DeliveryReceiver;->tray:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/airpush/android/DeliveryReceiver;->action:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/airpush/android/DeliveryReceiver;->event:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/airpush/android/DeliveryReceiver;->message:Ljava/lang/String;

    .line 23
    const-string v0, "http://api.airpush.com/redirect.php?market="

    iput-object v0, p0, Lcom/airpush/android/DeliveryReceiver;->uri:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/airpush/android/DeliveryReceiver;->apikey:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    sput-object p1, Lcom/airpush/android/DeliveryReceiver;->ctx:Landroid/content/Context;

    .line 37
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 38
    .local v0, deliveryServiceIntent:Landroid/content/Intent;
    sget-object v2, Lcom/airpush/android/DeliveryReceiver;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/airpush/android/Constants;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    const-string v2, "AirpushSDK"

    const-string v3, "Delivering Message"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setDeliveryReceiverPhone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    const-string v2, "apikey"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->apikey:Ljava/lang/String;

    .line 43
    new-instance v2, Ljava/lang/String;

    const-string v3, "appId"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->appId:Ljava/lang/String;

    .line 45
    const-string v2, "imei"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->imei:Ljava/lang/String;

    .line 46
    new-instance v2, Ljava/lang/String;

    const-string v3, "number"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->number:Ljava/lang/String;

    .line 47
    new-instance v2, Ljava/lang/String;

    const-string v3, "title"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->title:Ljava/lang/String;

    .line 48
    new-instance v2, Ljava/lang/String;

    const-string v3, "text"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->text:Ljava/lang/String;

    .line 49
    new-instance v2, Ljava/lang/String;

    const-string v3, "imageurl"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->imageurl:Ljava/lang/String;

    .line 50
    const-string v2, "expiry_time"

    const-wide/16 v3, 0x3c

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->expiry_time:Ljava/lang/Long;

    .line 51
    const-string v2, "campId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->campId:Ljava/lang/String;

    .line 52
    const-string v2, "creativeId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->creativeId:Ljava/lang/String;

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.airpush.android.PushServiceStart"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v2, "adType"

    const-string v3, "CC"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v2, "appId"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v2, "type"

    const-string v3, "delivery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v2, "number"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->number:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v2, "title"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v2, "text"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->text:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v2, "apikey"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->apikey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v2, "imageurl"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->imageurl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v2, "expiry_time"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->expiry_time:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 174
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 200
    .end local v0           #deliveryServiceIntent:Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 67
    .restart local v0       #deliveryServiceIntent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setDeliveryReceiverSMS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    const-string v2, "apikey"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->apikey:Ljava/lang/String;

    .line 70
    new-instance v2, Ljava/lang/String;

    const-string v3, "appId"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->appId:Ljava/lang/String;

    .line 72
    const-string v2, "imei"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->imei:Ljava/lang/String;

    .line 73
    new-instance v2, Ljava/lang/String;

    const-string v3, "number"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->number:Ljava/lang/String;

    .line 74
    new-instance v2, Ljava/lang/String;

    const-string v3, "sms"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->sms:Ljava/lang/String;

    .line 75
    new-instance v2, Ljava/lang/String;

    const-string v3, "title"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->title:Ljava/lang/String;

    .line 76
    new-instance v2, Ljava/lang/String;

    const-string v3, "text"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->text:Ljava/lang/String;

    .line 77
    new-instance v2, Ljava/lang/String;

    const-string v3, "imageurl"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->imageurl:Ljava/lang/String;

    .line 78
    const-string v2, "expiry_time"

    const-wide/16 v3, 0x3c

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->expiry_time:Ljava/lang/Long;

    .line 79
    const-string v2, "campId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->campId:Ljava/lang/String;

    .line 80
    const-string v2, "creativeId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->creativeId:Ljava/lang/String;

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.airpush.android.PushServiceStart"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v2, "adType"

    const-string v3, "CM"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v2, "appId"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v2, "type"

    const-string v3, "delivery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v2, "number"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->number:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v2, "title"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v2, "text"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->text:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v2, "sms"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->sms:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v2, "apikey"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->apikey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v2, "imageurl"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->imageurl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v2, "expiry_time"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->expiry_time:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 94
    const-string v2, "campId"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->campId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v2, "creativeId"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->creativeId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 178
    .end local v0           #deliveryServiceIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 196
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "AirpushSDK"

    const-string v3, "Delivering Message Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 99
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #deliveryServiceIntent:Landroid/content/Intent;
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setDeliveryReceiverWEB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    const-string v2, "apikey"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->apikey:Ljava/lang/String;

    .line 102
    new-instance v2, Ljava/lang/String;

    const-string v3, "appId"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->appId:Ljava/lang/String;

    .line 104
    const-string v2, "imei"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->imei:Ljava/lang/String;

    .line 105
    new-instance v2, Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->link:Ljava/lang/String;

    .line 106
    new-instance v2, Ljava/lang/String;

    const-string v3, "title"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->title:Ljava/lang/String;

    .line 107
    new-instance v2, Ljava/lang/String;

    const-string v3, "text"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->text:Ljava/lang/String;

    .line 108
    new-instance v2, Ljava/lang/String;

    const-string v3, "imageurl"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->imageurl:Ljava/lang/String;

    .line 109
    new-instance v2, Ljava/lang/String;

    const-string v3, "header"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->header:Ljava/lang/String;

    .line 110
    const-string v2, "expiry_time"

    const-wide/16 v3, 0x3c

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->expiry_time:Ljava/lang/Long;

    .line 111
    const-string v2, "campId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->campId:Ljava/lang/String;

    .line 112
    const-string v2, "creativeId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->creativeId:Ljava/lang/String;

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.airpush.android.PushServiceStart"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v2, "adType"

    const-string v3, "W"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v2, "appId"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v2, "type"

    const-string v3, "delivery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v2, "link"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->link:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v2, "header"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->header:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v2, "title"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v2, "text"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->text:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v2, "apikey"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->apikey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v2, "imageurl"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->imageurl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v2, "expiry_time"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->expiry_time:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 126
    const-string v2, "campId"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->campId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v2, "creativeId"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->creativeId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 130
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setDeliveryReceiverMARKET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 132
    const-string v2, "apikey"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->apikey:Ljava/lang/String;

    .line 133
    new-instance v2, Ljava/lang/String;

    const-string v3, "appId"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->appId:Ljava/lang/String;

    .line 135
    const-string v2, "imei"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->imei:Ljava/lang/String;

    .line 136
    new-instance v2, Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->link:Ljava/lang/String;

    .line 137
    new-instance v2, Ljava/lang/String;

    const-string v3, "title"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->title:Ljava/lang/String;

    .line 138
    new-instance v2, Ljava/lang/String;

    const-string v3, "text"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->text:Ljava/lang/String;

    .line 139
    new-instance v2, Ljava/lang/String;

    const-string v3, "imageurl"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->imageurl:Ljava/lang/String;

    .line 140
    const-string v2, "expiry_time"

    const-wide/16 v3, 0x3c

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->expiry_time:Ljava/lang/Long;

    .line 141
    const-string v2, "campId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->campId:Ljava/lang/String;

    .line 142
    const-string v2, "creativeId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->creativeId:Ljava/lang/String;

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.airpush.android.PushServiceStart"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v2, "adType"

    const-string v3, "A"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v2, "appId"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v2, "type"

    const-string v3, "delivery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v2, "link"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->link:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v2, "title"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v2, "text"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->text:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v2, "apikey"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->apikey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v2, "imageurl"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->imageurl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v2, "expiry_time"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->expiry_time:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 155
    const-string v2, "campId"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->campId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v2, "creativeId"

    iget-object v3, p0, Lcom/airpush/android/DeliveryReceiver;->creativeId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 158
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SetIconReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    const-string v2, "apikey"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->apikey:Ljava/lang/String;

    .line 160
    new-instance v2, Ljava/lang/String;

    const-string v3, "appId"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->appId:Ljava/lang/String;

    .line 162
    const-string v2, "imei"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->imei:Ljava/lang/String;

    .line 163
    new-instance v2, Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->link:Ljava/lang/String;

    .line 164
    new-instance v2, Ljava/lang/String;

    const-string v3, "title"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->title:Ljava/lang/String;

    .line 165
    new-instance v2, Ljava/lang/String;

    const-string v3, "text"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->text:Ljava/lang/String;

    .line 166
    new-instance v2, Ljava/lang/String;

    const-string v3, "imageurl"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->imageurl:Ljava/lang/String;

    .line 167
    const-string v2, "expiry_time"

    const-wide/16 v3, 0x3c

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->expiry_time:Ljava/lang/Long;

    .line 168
    const-string v2, "campId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->campId:Ljava/lang/String;

    .line 169
    const-string v2, "creativeId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/DeliveryReceiver;->creativeId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
