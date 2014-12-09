.class Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;
.super Ljava/lang/Object;
.source "PersistentAnalyticsStore.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/AnalyticsStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;
    }
.end annotation


# static fields
.field static final BACKEND_LIBRARY_VERSION:Ljava/lang/String; = "-s1"

.field private static final CREATE_HITS_TABLE:Ljava/lang/String; = null

.field private static final DATABASE_FILENAME:Ljava/lang/String; = "google_analytics_v2.db"

.field private static final HITS_TABLE:Ljava/lang/String; = "hits2"

.field private static final HIT_ID:Ljava/lang/String; = "hit_id"

.field private static final HIT_STRING:Ljava/lang/String; = "hit_string"

.field private static final HIT_TIME:Ljava/lang/String; = "hit_time"

.field private static final HIT_URL:Ljava/lang/String; = "hit_url"

.field static final MAX_TOKENS:J = 0x1d4c0L

.field static final TIME_PER_TOKEN_MILLIS:J = 0x7d0L


# instance fields
.field private final context:Landroid/content/Context;

.field private final databaseName:Ljava/lang/String;

.field private final dbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

.field private volatile dispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

.field private lastDeleteStaleHitsTime:J

.field private lastTrackTime:J

.field private final listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

.field private throttlingEnabled:Z

.field private tokens:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL);"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "hits2"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "hit_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "hit_time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "hit_url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "hit_string"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;Landroid/content/Context;)V
    .locals 1
    .parameter "listener"
    .parameter "ctx"

    .prologue
    .line 91
    const-string v0, "google_analytics_v2.db"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;-><init>(Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method constructor <init>(Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "listener"
    .parameter "ctx"
    .parameter "databaseName"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->tokens:J

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->throttlingEnabled:Z

    .line 109
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->context:Landroid/content/Context;

    .line 110
    iput-object p3, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->databaseName:Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    .line 112
    new-instance v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->databaseName:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;-><init>(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->dbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    .line 113
    new-instance v0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->createDefaultHttpClientFactory()Lcom/google/analytics/tracking/android/HttpClientFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;-><init>(Lcom/google/analytics/tracking/android/AnalyticsStore;Lcom/google/analytics/tracking/android/HttpClientFactory;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->dispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->lastDeleteStaleHitsTime:J

    .line 117
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method private createDefaultHttpClientFactory()Lcom/google/analytics/tracking/android/HttpClientFactory;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$1;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$1;-><init>(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)V

    return-object v0
.end method

.method private fillVersionParametersIfNecessary(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, wireFormatParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, commands:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gms/analytics/internal/Command;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/internal/Command;

    .line 194
    .local v1, command:Lcom/google/android/gms/analytics/internal/Command;
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/Command;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appendVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/Command;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, clientVersion:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/Command;->getUrlParam()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->storeVersion(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .end local v0           #clientVersion:Ljava/lang/String;
    .end local v1           #command:Lcom/google/android/gms/analytics/internal/Command;
    :cond_1
    return-void
.end method

.method public static generateHitString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, urlParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    .local v2, keyAndValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 269
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/analytics/tracking/android/HitBuilder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v3, "&"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .parameter "errorMessage"

    .prologue
    .line 564
    const/4 v0, 0x0

    .line 566
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->dbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 571
    :goto_0
    return-object v2

    .line 567
    :catch_0
    move-exception v1

    .line 568
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    .line 569
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private removeOldHitIfFull()V
    .locals 4

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v2

    add-int/lit16 v2, v2, -0x7d0

    add-int/lit8 v0, v2, 0x1

    .line 226
    .local v0, hitsOverLimit:I
    if-lez v0, :cond_0

    .line 227
    invoke-virtual {p0, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->peekHits(I)Ljava/util/List;

    move-result-object v1

    .line 228
    .local v1, hitsToDelete:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Store full, deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hits to make room"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->wDebug(Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0, v1}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->deleteHits(Ljava/util/Collection;)V

    .line 231
    .end local v1           #hitsToDelete:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :cond_0
    return-void
.end method

.method private storeVersion(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "versionUrlParam"
    .parameter "clientVersion"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, wireFormatParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p3

    .line 208
    .local v0, version:Ljava/lang/String;
    if-nez p3, :cond_1

    .line 209
    const-string v0, "-s1"

    .line 214
    :goto_0
    if-eqz p2, :cond_0

    .line 215
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    return-void

    .line 211
    :cond_1
    move-object v0, p3

    goto :goto_0
.end method

.method private writeHitToDatabase(Ljava/util/Map;JLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter "hitTimeInMilliseconds"
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, hit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Error opening database for putHit"

    invoke-direct {p0, v3}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 237
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 241
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 243
    .local v0, content:Landroid/content/ContentValues;
    const-string v3, "hit_string"

    invoke-static {p1}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->generateHitString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v3, "hit_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 245
    if-nez p4, :cond_1

    .line 246
    const-string p4, "http://www.google-analytics.com/collect"

    .line 249
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 252
    const-string v3, "empty path: not sending hit"

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_2
    const-string v3, "hit_url"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :try_start_0
    const-string v3, "hits2"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 260
    iget-object v3, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v2

    .line 262
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "Error storing hit"

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearHits()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    const-string v1, "Error opening database for clearHits"

    invoke-direct {p0, v1}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 152
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 156
    const-string v1, "hits2"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V

    .line 159
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->dbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_0
    return-void

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "Error opening database for close"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteHits(Ljava/util/Collection;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/analytics/tracking/android/Hit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, hits:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/analytics/tracking/android/Hit;>;"
    if-nez p1, :cond_0

    .line 412
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "hits cannot be null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 414
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 436
    :cond_1
    :goto_0
    return-void

    .line 417
    :cond_2
    const-string v8, "Error opening database for deleteHit"

    invoke-direct {p0, v8}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 418
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    .line 421
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    new-array v6, v8, [Ljava/lang/String;

    .line 422
    .local v6, ids:[Ljava/lang/String;
    const-string v8, "HIT_ID in (%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, ","

    array-length v12, v6

    const-string v13, "?"

    invoke-static {v12, v13}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 424
    .local v7, whereClause:Ljava/lang/String;
    const/4 v3, 0x0

    .line 425
    .local v3, i:I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/tracking/android/Hit;

    .line 426
    .local v2, hit:Lcom/google/analytics/tracking/android/Hit;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/Hit;->getHitId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 429
    .end local v2           #hit:Lcom/google/analytics/tracking/android/Hit;
    :cond_3
    :try_start_0
    const-string v8, "hits2"

    invoke-virtual {v0, v8, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 432
    iget-object v9, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    :goto_2
    invoke-interface {v9, v8}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error deleting hit "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 432
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :cond_4
    const/4 v8, 0x0

    goto :goto_2
.end method

.method deleteStaleHits()I
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 391
    .local v3, now:J
    iget-wide v8, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->lastDeleteStaleHitsTime:J

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    cmp-long v8, v3, v8

    if-gtz v8, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v7

    .line 394
    :cond_1
    iput-wide v3, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->lastDeleteStaleHitsTime:J

    .line 395
    const-string v8, "Error opening database for deleteStaleHits"

    invoke-direct {p0, v8}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 396
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide v10, 0x9a7ec800L

    sub-long v1, v8, v10

    .line 400
    .local v1, lastGoodTime:J
    const-string v8, "hits2"

    const-string v9, "HIT_TIME < ?"

    new-array v10, v6, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {v0, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 401
    .local v5, rslt:I
    iget-object v8, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v9

    if-nez v9, :cond_2

    :goto_1
    invoke-interface {v8, v6}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V

    move v7, v5

    .line 402
    goto :goto_0

    :cond_2
    move v6, v7

    .line 401
    goto :goto_1
.end method

.method public dispatch()V
    .locals 4

    .prologue
    .line 462
    const-string v2, "dispatch running..."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->vDebug(Ljava/lang/String;)I

    .line 464
    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->dispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/Dispatcher;->okToDispatch()Z

    move-result v2

    if-nez v2, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->peekHits(I)Ljava/util/List;

    move-result-object v0

    .line 469
    .local v0, hits:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    const-string v2, "...nothing to dispatch"

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->vDebug(Ljava/lang/String;)I

    .line 471
    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V

    goto :goto_0

    .line 474
    :cond_2
    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->dispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    invoke-interface {v2, v0}, Lcom/google/analytics/tracking/android/Dispatcher;->dispatchHits(Ljava/util/List;)I

    move-result v1

    .line 475
    .local v1, hitsDispatched:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->vDebug(Ljava/lang/String;)I

    .line 480
    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->deleteHits(Ljava/util/Collection;)V

    .line 484
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v2

    if-lez v2, :cond_0

    .line 485
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatch()V

    goto :goto_0
.end method

.method getHelper()Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->dbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    return-object v0
.end method

.method getNumStoredHits()I
    .locals 7

    .prologue
    .line 439
    const/4 v3, 0x0

    .line 440
    .local v3, numStoredHits:I
    const-string v5, "Error opening database for requestNumHitsPending"

    invoke-direct {p0, v5}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 441
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    move v4, v3

    .line 457
    .end local v3           #numStoredHits:I
    .local v4, numStoredHits:I
    :goto_0
    return v4

    .line 444
    .end local v4           #numStoredHits:I
    .restart local v3       #numStoredHits:I
    :cond_0
    const/4 v0, 0x0

    .line 446
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v5, "SELECT COUNT(*) from hits2"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 447
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 448
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    long-to-int v3, v5

    .line 453
    :cond_1
    if-eqz v0, :cond_2

    .line 454
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v4, v3

    .line 457
    .end local v3           #numStoredHits:I
    .restart local v4       #numStoredHits:I
    goto :goto_0

    .line 450
    .end local v4           #numStoredHits:I
    .restart local v3       #numStoredHits:I
    :catch_0
    move-exception v2

    .line 451
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v5, "Error getting numStoredHits"

    invoke-static {v5}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    if-eqz v0, :cond_2

    .line 454
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 453
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    .line 454
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
.end method

.method public peekHits(I)Ljava/util/List;
    .locals 22
    .parameter "maxHits"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/tracking/android/Hit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    const-string v3, "Error opening database for peekHits"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 284
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_1

    .line 285
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 373
    :cond_0
    :goto_0
    return-object v18

    .line 288
    :cond_1
    const/4 v13, 0x0

    .line 289
    .local v13, cursor:Landroid/database/Cursor;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v17, hits:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :try_start_0
    const-string v2, "hits2"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "hit_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "hit_time"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "hit_url"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "%s ASC, %s ASC"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "hit_url"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "hit_id"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 306
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v17           #hits:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .local v18, hits:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 309
    :cond_2
    new-instance v2, Lcom/google/analytics/tracking/android/Hit;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/google/analytics/tracking/android/Hit;-><init>(Ljava/lang/String;JJ)V

    .line 310
    .local v2, hit:Lcom/google/analytics/tracking/android/Hit;
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/Hit;->setHitUrl(Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    if-nez v3, :cond_2

    .line 318
    .end local v2           #hit:Lcom/google/analytics/tracking/android/Hit;
    :cond_3
    if-eqz v13, :cond_4

    .line 319
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_4
    const/4 v12, 0x0

    .line 325
    .local v12, count:I
    :try_start_2
    const-string v4, "hits2"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "hit_id"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "hit_string"

    aput-object v6, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "%s ASC"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v21, "hit_id"

    aput-object v21, v10, v11

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object v3, v1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 333
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 335
    :cond_5
    instance-of v3, v13, Landroid/database/sqlite/SQLiteCursor;

    if-eqz v3, :cond_b

    .line 336
    move-object v0, v13

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v14

    .line 340
    .local v14, cw:Landroid/database/CursorWindow;
    invoke-virtual {v14}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    if-lez v3, :cond_8

    .line 341
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/tracking/android/Hit;

    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/analytics/tracking/android/Hit;->setHitString(Ljava/lang/String;)V

    .line 349
    .end local v14           #cw:Landroid/database/CursorWindow;
    :goto_1
    add-int/lit8 v12, v12, 0x1

    .line 350
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-nez v3, :cond_5

    .line 372
    :cond_6
    if-eqz v13, :cond_0

    .line 373
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 314
    .end local v12           #count:I
    .end local v18           #hits:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v17       #hits:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :catch_0
    move-exception v15

    .line 315
    .local v15, e:Landroid/database/sqlite/SQLiteException;
    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in peekHits fetching hitIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    .line 316
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    if-eqz v13, :cond_0

    .line 319
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 318
    .end local v15           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v13, :cond_7

    .line 319
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3

    .line 343
    .end local v17           #hits:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v12       #count:I
    .restart local v14       #cw:Landroid/database/CursorWindow;
    .restart local v18       #hits:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :cond_8
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hitString for hitId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/tracking/android/Hit;

    invoke-virtual {v3}, Lcom/google/analytics/tracking/android/Hit;->getHitId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " too large.  Hit will be deleted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 353
    .end local v14           #cw:Landroid/database/CursorWindow;
    :catch_1
    move-exception v15

    .line 354
    .restart local v15       #e:Landroid/database/sqlite/SQLiteException;
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in peekHits fetching hitString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    .line 358
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v20, partialHits:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    const/16 v16, 0x0

    .line 360
    .local v16, foundOneBadHit:Z
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/tracking/android/Hit;

    .line 361
    .restart local v2       #hit:Lcom/google/analytics/tracking/android/Hit;
    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v3

    if-eqz v3, :cond_e

    .line 362
    if-eqz v16, :cond_d

    .line 372
    .end local v2           #hit:Lcom/google/analytics/tracking/android/Hit;
    :cond_9
    if-eqz v13, :cond_a

    .line 373
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_a
    move-object/from16 v18, v20

    goto/16 :goto_0

    .line 347
    .end local v15           #e:Landroid/database/sqlite/SQLiteException;
    .end local v16           #foundOneBadHit:Z
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v20           #partialHits:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :cond_b
    :try_start_6
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/tracking/android/Hit;

    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/analytics/tracking/android/Hit;->setHitString(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 372
    :catchall_1
    move-exception v3

    if-eqz v13, :cond_c

    .line 373
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v3

    .line 365
    .restart local v2       #hit:Lcom/google/analytics/tracking/android/Hit;
    .restart local v15       #e:Landroid/database/sqlite/SQLiteException;
    .restart local v16       #foundOneBadHit:Z
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v20       #partialHits:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :cond_d
    const/16 v16, 0x1

    .line 368
    :cond_e
    :try_start_7
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .line 318
    .end local v2           #hit:Lcom/google/analytics/tracking/android/Hit;
    .end local v12           #count:I
    .end local v15           #e:Landroid/database/sqlite/SQLiteException;
    .end local v16           #foundOneBadHit:Z
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v20           #partialHits:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :catchall_2
    move-exception v3

    move-object/from16 v17, v18

    .end local v18           #hits:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v17       #hits:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    goto/16 :goto_3

    .line 314
    .end local v17           #hits:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v18       #hits:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :catch_2
    move-exception v15

    move-object/from16 v17, v18

    .end local v18           #hits:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v17       #hits:Ljava/util/List;,"Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    goto/16 :goto_2
.end method

.method public putHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .parameter
    .parameter "hitTimeInMilliseconds"
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, wireFormatParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, commands:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gms/analytics/internal/Command;>;"
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->deleteStaleHits()I

    .line 178
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->tokensAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-direct {p0, p1, p5}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->fillVersionParametersIfNecessary(Ljava/util/Map;Ljava/util/Collection;)V

    .line 183
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->removeOldHitIfFull()V

    .line 184
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->writeHitToDatabase(Ljava/util/Map;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public setDispatch(Z)V
    .locals 3
    .parameter "dispatch"

    .prologue
    .line 135
    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->createDefaultHttpClientFactory()Lcom/google/analytics/tracking/android/HttpClientFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;-><init>(Lcom/google/analytics/tracking/android/AnalyticsStore;Lcom/google/analytics/tracking/android/HttpClientFactory;Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->dispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    .line 138
    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/google/analytics/tracking/android/NoopDispatcher;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/NoopDispatcher;-><init>()V

    goto :goto_0
.end method

.method setDispatcher(Lcom/google/analytics/tracking/android/Dispatcher;)V
    .locals 0
    .parameter "dispatcher"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->dispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    .line 147
    return-void
.end method

.method setLastDeleteStaleHitsTime(J)V
    .locals 0
    .parameter "timeInMilliseconds"

    .prologue
    .line 382
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->lastDeleteStaleHitsTime:J

    .line 383
    return-void
.end method

.method setLastTrackTime(J)V
    .locals 0
    .parameter "lastTrackTime"

    .prologue
    .line 501
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->lastTrackTime:J

    .line 502
    return-void
.end method

.method public setThrottlingEnabled(Z)V
    .locals 0
    .parameter "throttlingEnabled"

    .prologue
    .line 544
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->throttlingEnabled:Z

    .line 545
    return-void
.end method

.method setTokens(J)V
    .locals 0
    .parameter "tokens"

    .prologue
    .line 506
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->tokens:J

    .line 507
    return-void
.end method

.method declared-synchronized tokensAvailable()Z
    .locals 11

    .prologue
    const-wide/32 v7, 0x1d4c0

    const-wide/16 v9, 0x7d0

    const/4 v4, 0x1

    .line 520
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->throttlingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 536
    :goto_0
    monitor-exit p0

    return v4

    .line 523
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 524
    .local v2, timeNow:J
    iget-wide v5, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->tokens:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 525
    iget-wide v5, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->lastTrackTime:J

    sub-long v0, v2, v5

    .line 526
    .local v0, timeElapsed:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_1

    .line 527
    const-wide/32 v5, 0x1d4c0

    iget-wide v7, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->tokens:J

    add-long/2addr v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->tokens:J

    .line 530
    .end local v0           #timeElapsed:J
    :cond_1
    iput-wide v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->lastTrackTime:J

    .line 531
    iget-wide v5, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->tokens:J

    cmp-long v5, v5, v9

    if-ltz v5, :cond_2

    .line 532
    iget-wide v5, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->tokens:J

    sub-long/2addr v5, v9

    iput-wide v5, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->tokens:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 520
    .end local v2           #timeNow:J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 535
    .restart local v2       #timeNow:J
    :cond_2
    :try_start_2
    const-string v4, "Excessive tracking detected.  Tracking call ignored."

    invoke-static {v4}, Lcom/google/analytics/tracking/android/Log;->wDebug(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 536
    const/4 v4, 0x0

    goto :goto_0
.end method
