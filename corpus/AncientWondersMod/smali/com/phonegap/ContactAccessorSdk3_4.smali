.class public Lcom/phonegap/ContactAccessorSdk3_4;
.super Lcom/phonegap/ContactAccessor;
.source "ContactAccessorSdk3_4.java"


# static fields
.field private static final PEOPLE_ID_EQUALS:Ljava/lang/String; = "people._id = ?"

.field private static final dbMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    .line 72
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "id"

    const-string v2, "_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "displayName"

    const-string v2, "display_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "phoneNumbers"

    const-string v2, "number"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "phoneNumbers.value"

    const-string v2, "number"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "emails"

    const-string v2, "data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "emails.value"

    const-string v2, "data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "addresses"

    const-string v2, "data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.formatted"

    const-string v2, "data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "ims"

    const-string v2, "data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "ims.value"

    const-string v2, "data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "organizations"

    const-string v2, "company"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "organizations.name"

    const-string v2, "company"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "organizations.title"

    const-string v2, "title"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    const-string v1, "note"

    const-string v2, "notes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Landroid/app/Activity;)V
    .locals 0
    .parameter "view"
    .parameter "app"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/phonegap/ContactAccessor;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    .line 94
    iput-object p1, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mView:Landroid/webkit/WebView;

    .line 95
    return-void
.end method

.method private addressQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10
    .parameter "cr"
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    .line 365
    const-string v3, "person = ? AND kind = ?"

    .line 367
    .local v3, addrWhere:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    const-string v1, "vnd.android.cursor.item/postal-address"

    aput-object v1, v4, v0

    .line 369
    .local v4, addrWhereParams:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 371
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 373
    .local v7, addresses:Lorg/json/JSONArray;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 376
    .local v6, address:Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "id"

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    const-string v0, "formatted"

    const-string v1, "data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v9

    .line 380
    .local v9, e:Lorg/json/JSONException;
    const-string v0, "ContactsAccessor"

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 383
    .end local v6           #address:Lorg/json/JSONObject;
    .end local v9           #e:Lorg/json/JSONException;
    :cond_0
    return-object v7
.end method

.method private buildSetOfContactIds(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/Set;
    .locals 10
    .parameter "fields"
    .parameter "searchTerm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 199
    .local v2, contactIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 200
    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 201
    .local v9, key:Ljava/lang/String;
    const-string v0, "displayName"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/phonegap/ContactAccessorSdk3_4;->doQuery(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 216
    :cond_1
    const-string v0, "phoneNumbers"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    sget-object v3, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "person"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/phonegap/ContactAccessorSdk3_4;->doQuery(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 260
    .end local v9           #key:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 261
    .local v7, e:Lorg/json/JSONException;
    const-string v0, "ContactsAccessor"

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v7           #e:Lorg/json/JSONException;
    :cond_2
    return-object v2

    .line 223
    .restart local v9       #key:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v0, "emails"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    sget-object v3, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    const-string v4, "person"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    const/4 v0, 0x1

    const-string v1, "vnd.android.cursor.item/email"

    aput-object v1, v6, v0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/phonegap/ContactAccessorSdk3_4;->doQuery(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 230
    :cond_4
    const-string v0, "addresses"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 231
    sget-object v3, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "person"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    const/4 v0, 0x1

    const-string v1, "vnd.android.cursor.item/postal-address"

    aput-object v1, v6, v0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/phonegap/ContactAccessorSdk3_4;->doQuery(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 237
    :cond_5
    const-string v0, "ims"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 238
    sget-object v3, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "person"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    const/4 v0, 0x1

    const-string v1, "vnd.android.cursor.item/jabber-im"

    aput-object v1, v6, v0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/phonegap/ContactAccessorSdk3_4;->doQuery(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 244
    :cond_6
    const-string v0, "organizations"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 245
    sget-object v3, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "person"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/phonegap/ContactAccessorSdk3_4;->doQuery(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 251
    :cond_7
    const-string v0, "note"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phonegap/ContactAccessorSdk3_4;->dbMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/phonegap/ContactAccessorSdk3_4;->doQuery(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private createAddressString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "entry"

    .prologue
    .line 588
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 589
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "locality"

    invoke-virtual {p0, p1, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 590
    const-string v1, "locality"

    invoke-virtual {p0, p1, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 592
    :cond_0
    const-string v1, "region"

    invoke-virtual {p0, p1, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 593
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 594
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    :cond_1
    const-string v1, "region"

    invoke-virtual {p0, p1, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    :cond_2
    const-string v1, "postalCode"

    invoke-virtual {p0, p1, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 599
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 600
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    :cond_3
    const-string v1, "postalCode"

    invoke-virtual {p0, p1, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    :cond_4
    const-string v1, "country"

    invoke-virtual {p0, p1, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 605
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 606
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    :cond_5
    const-string v1, "country"

    invoke-virtual {p0, p1, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private doQuery(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "searchTerm"
    .parameter
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, contactIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 278
    iget-object v1, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v1, p3

    move-object v3, p5

    move-object v4, p6

    move-object v5, v2

    .line 280
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 287
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-interface {v6, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 291
    return-void
.end method

.method private emailQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10
    .parameter "cr"
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 422
    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    const-string v3, "person = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v5

    move-object v0, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 427
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 429
    .local v9, emails:Lorg/json/JSONArray;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 432
    .local v8, email:Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "id"

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    const-string v0, "primary"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 434
    const-string v0, "value"

    const-string v1, "data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v7

    .line 439
    .local v7, e:Lorg/json/JSONException;
    const-string v0, "ContactsAccessor"

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 442
    .end local v7           #e:Lorg/json/JSONException;
    .end local v8           #email:Lorg/json/JSONObject;
    :cond_0
    return-object v9
.end method

.method private getContactType(Ljava/lang/String;)I
    .locals 3
    .parameter "string"

    .prologue
    .line 658
    const/4 v0, 0x3

    .line 659
    .local v0, type:I
    if-eqz p1, :cond_0

    .line 660
    const-string v1, "home"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 661
    const/4 v0, 0x1

    .line 673
    .end local v0           #type:I
    :cond_0
    :goto_0
    return v0

    .line 663
    .restart local v0       #type:I
    :cond_1
    const-string v1, "work"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 664
    const/4 v0, 0x2

    goto :goto_0

    .line 666
    :cond_2
    const-string v1, "other"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 667
    const/4 v0, 0x3

    goto :goto_0

    .line 669
    :cond_3
    const-string v1, "custom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getContactType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 683
    packed-switch p1, :pswitch_data_0

    .line 695
    const-string v0, "other"

    .line 698
    .local v0, stringType:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 685
    .end local v0           #stringType:Ljava/lang/String;
    :pswitch_0
    const-string v0, "custom"

    .line 686
    .restart local v0       #stringType:Ljava/lang/String;
    goto :goto_0

    .line 688
    .end local v0           #stringType:Ljava/lang/String;
    :pswitch_1
    const-string v0, "home"

    .line 689
    .restart local v0       #stringType:Ljava/lang/String;
    goto :goto_0

    .line 691
    .end local v0           #stringType:Ljava/lang/String;
    :pswitch_2
    const-string v0, "work"

    .line 692
    .restart local v0       #stringType:Ljava/lang/String;
    goto :goto_0

    .line 683
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPhoneType(Ljava/lang/String;)I
    .locals 4
    .parameter "string"

    .prologue
    const/4 v1, 0x4

    .line 745
    const/4 v0, 0x7

    .line 746
    .local v0, type:I
    const-string v2, "home"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 747
    const/4 v0, 0x1

    .line 773
    .end local v0           #type:I
    :cond_0
    :goto_0
    return v0

    .line 749
    .restart local v0       #type:I
    :cond_1
    const-string v2, "mobile"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 750
    const/4 v0, 0x2

    goto :goto_0

    .line 752
    :cond_2
    const-string v2, "work"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 753
    const/4 v0, 0x3

    goto :goto_0

    .line 755
    :cond_3
    const-string v2, "work fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 756
    goto :goto_0

    .line 758
    :cond_4
    const-string v2, "home fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 759
    const/4 v0, 0x5

    goto :goto_0

    .line 761
    :cond_5
    const-string v2, "fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 762
    goto :goto_0

    .line 764
    :cond_6
    const-string v1, "pager"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 765
    const/4 v0, 0x6

    goto :goto_0

    .line 767
    :cond_7
    const-string v1, "other"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 768
    const/4 v0, 0x7

    goto :goto_0

    .line 770
    :cond_8
    const-string v1, "custom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPhoneType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 783
    packed-switch p1, :pswitch_data_0

    .line 807
    const-string v0, "custom"

    .line 810
    .local v0, stringType:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 785
    .end local v0           #stringType:Ljava/lang/String;
    :pswitch_0
    const-string v0, "custom"

    .line 786
    .restart local v0       #stringType:Ljava/lang/String;
    goto :goto_0

    .line 788
    .end local v0           #stringType:Ljava/lang/String;
    :pswitch_1
    const-string v0, "home fax"

    .line 789
    .restart local v0       #stringType:Ljava/lang/String;
    goto :goto_0

    .line 791
    .end local v0           #stringType:Ljava/lang/String;
    :pswitch_2
    const-string v0, "work fax"

    .line 792
    .restart local v0       #stringType:Ljava/lang/String;
    goto :goto_0

    .line 794
    .end local v0           #stringType:Ljava/lang/String;
    :pswitch_3
    const-string v0, "home"

    .line 795
    .restart local v0       #stringType:Ljava/lang/String;
    goto :goto_0

    .line 797
    .end local v0           #stringType:Ljava/lang/String;
    :pswitch_4
    const-string v0, "mobile"

    .line 798
    .restart local v0       #stringType:Ljava/lang/String;
    goto :goto_0

    .line 800
    .end local v0           #stringType:Ljava/lang/String;
    :pswitch_5
    const-string v0, "pager"

    .line 801
    .restart local v0       #stringType:Ljava/lang/String;
    goto :goto_0

    .line 803
    .end local v0           #stringType:Ljava/lang/String;
    :pswitch_6
    const-string v0, "work"

    .line 804
    .restart local v0       #stringType:Ljava/lang/String;
    goto :goto_0

    .line 783
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private imQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10
    .parameter "cr"
    .parameter "contactId"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 300
    const-string v3, "person = ? AND kind = ?"

    .line 302
    .local v3, imWhere:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v1

    const/4 v0, 0x1

    const-string v1, "vnd.android.cursor.item/jabber-im"

    aput-object v1, v4, v0

    .line 303
    .local v4, imWhereParams:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 305
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 307
    .local v9, ims:Lorg/json/JSONArray;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 310
    .local v8, im:Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "id"

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v0, "primary"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 313
    const-string v0, "value"

    const-string v1, "data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v0, "type"

    const-string v1, "type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getContactType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v7

    .line 319
    .local v7, e:Lorg/json/JSONException;
    const-string v0, "ContactsAccessor"

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 322
    .end local v7           #e:Lorg/json/JSONException;
    .end local v8           #im:Lorg/json/JSONObject;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 323
    return-object v2
.end method

.method private organizationQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10
    .parameter "cr"
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    .line 333
    const-string v3, "person = ?"

    .line 334
    .local v3, orgWhere:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 335
    .local v4, orgWhereParams:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 337
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 339
    .local v9, organizations:Lorg/json/JSONArray;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 342
    .local v8, organization:Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "id"

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    const-string v0, "name"

    const-string v1, "company"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v0, "title"

    const-string v1, "title"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v7

    .line 352
    .local v7, e:Lorg/json/JSONException;
    const-string v0, "ContactsAccessor"

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 355
    .end local v7           #e:Lorg/json/JSONException;
    .end local v8           #organization:Lorg/json/JSONObject;
    :cond_0
    return-object v9
.end method

.method private phoneQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10
    .parameter "cr"
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 393
    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "person = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v5

    move-object v0, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 398
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 400
    .local v9, phones:Lorg/json/JSONArray;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 403
    .local v8, phone:Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "id"

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    const-string v0, "primary"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 405
    const-string v0, "value"

    const-string v1, "number"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    const-string v0, "type"

    const-string v1, "type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->getPhoneType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    :catch_0
    move-exception v7

    .line 409
    .local v7, e:Lorg/json/JSONException;
    const-string v0, "ContactsAccessor"

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 412
    .end local v7           #e:Lorg/json/JSONException;
    .end local v8           #phone:Lorg/json/JSONObject;
    :cond_0
    return-object v9
.end method

.method private saveAddresses(Lorg/json/JSONObject;Landroid/net/Uri;)V
    .locals 12
    .parameter "contact"
    .parameter "uri"

    .prologue
    .line 544
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 545
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "contact_methods"

    invoke-static {p2, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 547
    .local v6, newUri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 549
    .local v5, id:Ljava/lang/String;
    :try_start_0
    const-string v9, "addresses"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 550
    .local v2, entries:Lorg/json/JSONArray;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 552
    const-string v9, "kind"

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 553
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 554
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 555
    .local v3, entry:Lorg/json/JSONObject;
    const-string v9, "id"

    invoke-virtual {p0, v3, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 557
    const-string v9, "formatted"

    invoke-virtual {p0, v3, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 559
    const-string v9, "data"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :goto_1
    if-nez v5, :cond_2

    .line 566
    iget-object v9, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v6, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 553
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 562
    :cond_0
    const-string v9, "data"

    invoke-direct {p0, v3}, Lcom/phonegap/ContactAccessorSdk3_4;->createAddressString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 575
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #entries:Lorg/json/JSONArray;
    .end local v3           #entry:Lorg/json/JSONObject;
    .end local v4           #i:I
    :catch_0
    move-exception v1

    .line 576
    .local v1, e:Lorg/json/JSONException;
    const-string v9, "ContactsAccessor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not save address = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .end local v1           #e:Lorg/json/JSONException;
    :cond_1
    return-void

    .line 569
    .restart local v0       #address:Ljava/lang/String;
    .restart local v2       #entries:Lorg/json/JSONArray;
    .restart local v3       #entry:Lorg/json/JSONObject;
    .restart local v4       #i:I
    :cond_2
    :try_start_1
    invoke-static {v6, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 570
    .local v7, tempUri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v7, v8, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private saveEntries(Lorg/json/JSONObject;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 11
    .parameter "contact"
    .parameter "uri"
    .parameter "dataType"
    .parameter "contactKind"

    .prologue
    .line 622
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 623
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "contact_methods"

    invoke-static {p2, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 625
    .local v5, newUri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 628
    .local v4, id:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 629
    .local v1, entries:Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 631
    const-string v8, "kind"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 632
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 633
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 634
    .local v2, entry:Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-virtual {p0, v2, v8}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 635
    const-string v8, "data"

    const-string v9, "value"

    invoke-virtual {p0, v2, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v8, "type"

    const-string v9, "type"

    invoke-virtual {p0, v2, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getContactType(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 637
    if-nez v4, :cond_0

    .line 638
    iget-object v8, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v5, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 632
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 641
    :cond_0
    invoke-static {v5, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 642
    .local v6, tempUri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 647
    .end local v1           #entries:Lorg/json/JSONArray;
    .end local v2           #entry:Lorg/json/JSONObject;
    .end local v3           #i:I
    .end local v6           #tempUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 648
    .local v0, e:Lorg/json/JSONException;
    const-string v8, "ContactsAccessor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not save "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    return-void
.end method

.method private saveOrganizations(Lorg/json/JSONObject;Landroid/net/Uri;)V
    .locals 11
    .parameter "contact"
    .parameter "newPersonUri"

    .prologue
    .line 507
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 508
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "organizations"

    invoke-static {p2, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 510
    .local v4, orgUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 512
    .local v2, id:Ljava/lang/String;
    :try_start_0
    const-string v8, "organizations"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 513
    .local v5, orgs:Lorg/json/JSONArray;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 515
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 516
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 517
    .local v3, org:Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-virtual {p0, v3, v8}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 518
    const-string v8, "company"

    const-string v9, "name"

    invoke-virtual {p0, v3, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v8, "title"

    const-string v9, "title"

    invoke-virtual {p0, v3, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    if-nez v2, :cond_0

    .line 521
    iget-object v8, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v4, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 515
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_0
    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 525
    .local v6, tempUri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 530
    .end local v1           #i:I
    .end local v3           #org:Lorg/json/JSONObject;
    .end local v5           #orgs:Lorg/json/JSONArray;
    .end local v6           #tempUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 531
    .local v0, e:Lorg/json/JSONException;
    const-string v8, "ContactsAccessor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not save organizations = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    return-void
.end method

.method private savePhoneNumbers(Lorg/json/JSONObject;Landroid/net/Uri;)V
    .locals 11
    .parameter "contact"
    .parameter "uri"

    .prologue
    .line 710
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 711
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "phones"

    invoke-static {p2, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 713
    .local v6, phonesUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 716
    .local v2, id:Ljava/lang/String;
    :try_start_0
    const-string v8, "phoneNumbers"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 717
    .local v5, phones:Lorg/json/JSONArray;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 719
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 720
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 721
    .local v4, phone:Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-virtual {p0, v4, v8}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 722
    const-string v8, "number"

    const-string v9, "value"

    invoke-virtual {p0, v4, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v8, "type"

    const-string v9, "type"

    invoke-virtual {p0, v4, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/phonegap/ContactAccessorSdk3_4;->getPhoneType(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 724
    if-nez v2, :cond_0

    .line 725
    iget-object v8, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 719
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 728
    :cond_0
    invoke-static {v6, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 729
    .local v3, newUri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 734
    .end local v1           #i:I
    .end local v3           #newUri:Landroid/net/Uri;
    .end local v4           #phone:Lorg/json/JSONObject;
    .end local v5           #phones:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 735
    .local v0, e:Lorg/json/JSONException;
    const-string v8, "ContactsAccessor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not save phones = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/String;)Z
    .locals 7
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 819
    iget-object v3, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "people._id = ?"

    new-array v6, v1, [Ljava/lang/String;

    aput-object p1, v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 823
    .local v0, result:I
    if-lez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public save(Lorg/json/JSONObject;)Z
    .locals 10
    .parameter "contact"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 453
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 455
    .local v4, personValues:Landroid/content/ContentValues;
    const-string v7, "id"

    invoke-virtual {p0, p1, v7}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, id:Ljava/lang/String;
    const-string v7, "displayName"

    invoke-virtual {p0, p1, v7}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 459
    const-string v7, "name"

    invoke-virtual {v4, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_0
    const-string v7, "note"

    invoke-virtual {p0, p1, v7}, Lcom/phonegap/ContactAccessorSdk3_4;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, note:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 463
    const-string v7, "notes"

    invoke-virtual {v4, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_1
    const-string v7, "starred"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 471
    if-nez v0, :cond_2

    .line 472
    iget-object v7, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/provider/Contacts$People;->createPersonInMyContactsGroup(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 480
    .local v2, newPersonUri:Landroid/net/Uri;
    :goto_0
    if-eqz v2, :cond_3

    .line 482
    invoke-direct {p0, p1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->savePhoneNumbers(Lorg/json/JSONObject;Landroid/net/Uri;)V

    .line 484
    const-string v6, "emails"

    invoke-direct {p0, p1, v2, v6, v5}, Lcom/phonegap/ContactAccessorSdk3_4;->saveEntries(Lorg/json/JSONObject;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 486
    invoke-direct {p0, p1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->saveAddresses(Lorg/json/JSONObject;Landroid/net/Uri;)V

    .line 488
    invoke-direct {p0, p1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->saveOrganizations(Lorg/json/JSONObject;Landroid/net/Uri;)V

    .line 490
    const-string v6, "ims"

    const/4 v7, 0x3

    invoke-direct {p0, p1, v2, v6, v7}, Lcom/phonegap/ContactAccessorSdk3_4;->saveEntries(Lorg/json/JSONObject;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 495
    :goto_1
    return v5

    .line 476
    .end local v2           #newPersonUri:Landroid/net/Uri;
    :cond_2
    sget-object v7, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 477
    .restart local v2       #newPersonUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "people._id = ?"

    new-array v9, v5, [Ljava/lang/String;

    aput-object v0, v9, v6

    invoke-virtual {v7, v2, v4, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v5, v6

    .line 495
    goto :goto_1
.end method

.method public search(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 21
    .parameter "fields"
    .parameter "options"

    .prologue
    .line 106
    const-string v20, ""

    .line 107
    .local v20, searchTerm:Ljava/lang/String;
    const/16 v16, 0x1

    .line 108
    .local v16, limit:I
    const/16 v17, 0x0

    .line 110
    .local v17, multiple:Z
    :try_start_0
    const-string v4, "filter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 111
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    .line 112
    const-string v20, "%"

    .line 117
    :goto_0
    const-string v4, "multiple"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 118
    if-eqz v17, :cond_0

    .line 119
    const-string v4, "limit"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 125
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/phonegap/ContactAccessorSdk3_4;->mApp:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 127
    .local v3, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/phonegap/ContactAccessorSdk3_4;->buildSetOfContactIds(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v11

    .line 128
    .local v11, contactIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/phonegap/ContactAccessorSdk3_4;->buildPopulationSet(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v18

    .line 130
    .local v18, populate:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 132
    .local v15, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 135
    .local v12, contacts:Lorg/json/JSONArray;
    const/16 v19, 0x0

    .line 136
    .local v19, pos:I
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 137
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 139
    .local v9, contact:Lorg/json/JSONObject;
    :try_start_1
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 140
    .local v10, contactId:Ljava/lang/String;
    const-string v4, "id"

    invoke-virtual {v9, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    sget-object v4, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "display_name"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "notes"

    aput-object v7, v5, v6

    const-string v6, "people._id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v10, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 148
    .local v13, cur:Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 150
    const-string v4, "displayName"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    const-string v4, "displayName"

    const-string v5, "display_name"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    :cond_1
    const-string v4, "phoneNumbers"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    const-string v4, "phoneNumbers"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/phonegap/ContactAccessorSdk3_4;->phoneQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_2
    const-string v4, "emails"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 157
    const-string v4, "emails"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/phonegap/ContactAccessorSdk3_4;->emailQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    :cond_3
    const-string v4, "addresses"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 160
    const-string v4, "addresses"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/phonegap/ContactAccessorSdk3_4;->addressQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    :cond_4
    const-string v4, "organizations"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 163
    const-string v4, "organizations"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/phonegap/ContactAccessorSdk3_4;->organizationQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    :cond_5
    const-string v4, "ims"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 166
    const-string v4, "ims"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/phonegap/ContactAccessorSdk3_4;->imQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    :cond_6
    const-string v4, "note"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/phonegap/ContactAccessorSdk3_4;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 169
    const-string v4, "note"

    const-string v5, "notes"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    :cond_7
    add-int/lit8 v19, v19, 0x1

    .line 178
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    .end local v10           #contactId:Ljava/lang/String;
    .end local v13           #cur:Landroid/database/Cursor;
    :goto_3
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_2

    .line 115
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v9           #contact:Lorg/json/JSONObject;
    .end local v11           #contactIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12           #contacts:Lorg/json/JSONArray;
    .end local v15           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v18           #populate:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v19           #pos:I
    :cond_8
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v20

    goto/16 :goto_0

    .line 121
    :catch_0
    move-exception v14

    .line 122
    .local v14, e:Lorg/json/JSONException;
    const-string v4, "ContactsAccessor"

    invoke-virtual {v14}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 179
    .end local v14           #e:Lorg/json/JSONException;
    .restart local v3       #cr:Landroid/content/ContentResolver;
    .restart local v9       #contact:Lorg/json/JSONObject;
    .restart local v11       #contactIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12       #contacts:Lorg/json/JSONArray;
    .restart local v15       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v18       #populate:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v19       #pos:I
    :catch_1
    move-exception v14

    .line 180
    .restart local v14       #e:Lorg/json/JSONException;
    const-string v4, "ContactsAccessor"

    invoke-virtual {v14}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 184
    .end local v9           #contact:Lorg/json/JSONObject;
    .end local v14           #e:Lorg/json/JSONException;
    :cond_9
    return-object v12
.end method
