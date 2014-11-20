.class Lartiic/plugins/CustomSplashScreenPlugin$1;
.super Ljava/lang/Object;
.source "CustomSplashScreenPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lartiic/plugins/CustomSplashScreenPlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lartiic/plugins/CustomSplashScreenPlugin;


# direct methods
.method constructor <init>(Lartiic/plugins/CustomSplashScreenPlugin;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lartiic/plugins/CustomSplashScreenPlugin$1;->this$0:Lartiic/plugins/CustomSplashScreenPlugin;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lartiic/plugins/CustomSplashScreenPlugin$1;->this$0:Lartiic/plugins/CustomSplashScreenPlugin;

    iget-object v0, v0, Lartiic/plugins/CustomSplashScreenPlugin;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    check-cast v0, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;

    invoke-virtual {v0}, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->hideCustomSplashScreen()V

    .line 25
    return-void
.end method
