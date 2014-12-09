.class Lcom/google/analytics/tracking/android/GAUsage;
.super Ljava/lang/Object;
.source "GAUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/GAUsage$Field;
    }
.end annotation


# static fields
.field private static final BASE_64_CHARS:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

.field private static final INSTANCE:Lcom/google/analytics/tracking/android/GAUsage;


# instance fields
.field private disableUsage:Z

.field private sequence:Ljava/lang/StringBuilder;

.field private usedFields:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/google/analytics/tracking/android/GAUsage$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/google/analytics/tracking/android/GAUsage;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/GAUsage;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/GAUsage;->INSTANCE:Lcom/google/analytics/tracking/android/GAUsage;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->usedFields:Ljava/util/SortedSet;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->sequence:Ljava/lang/StringBuilder;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->disableUsage:Z

    .line 105
    return-void
.end method

.method public static getInstance()Lcom/google/analytics/tracking/android/GAUsage;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/google/analytics/tracking/android/GAUsage;->INSTANCE:Lcom/google/analytics/tracking/android/GAUsage;

    return-object v0
.end method

.method static getPrivateInstance()Lcom/google/analytics/tracking/android/GAUsage;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/google/analytics/tracking/android/GAUsage;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/GAUsage;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getAndClearSequence()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAUsage;->sequence:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAUsage;->sequence:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAUsage;->sequence:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, result:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/tracking/android/GAUsage;->sequence:Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-object v0

    .line 177
    .end local v0           #result:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAndClearUsage()Ljava/lang/String;
    .locals 7

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v3, result:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 132
    .local v4, spot:I
    const/4 v1, 0x6

    .line 134
    .local v1, nextBoundary:I
    :goto_0
    iget-object v5, p0, Lcom/google/analytics/tracking/android/GAUsage;->usedFields:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 138
    iget-object v5, p0, Lcom/google/analytics/tracking/android/GAUsage;->usedFields:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/GAUsage$Field;

    .line 139
    .local v0, f:Lcom/google/analytics/tracking/android/GAUsage$Field;
    iget-object v5, p0, Lcom/google/analytics/tracking/android/GAUsage;->usedFields:Ljava/util/SortedSet;

    invoke-interface {v5, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAUsage$Field;->ordinal()I

    move-result v2

    .line 147
    .local v2, nextLoc:I
    :goto_1
    if-lt v2, v1, :cond_0

    .line 148
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    const/4 v4, 0x0

    .line 150
    add-int/lit8 v1, v1, 0x6

    goto :goto_1

    .line 152
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAUsage$Field;->ordinal()I

    move-result v6

    rem-int/lit8 v6, v6, 0x6

    shl-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 153
    goto :goto_0

    .line 158
    .end local v0           #f:Lcom/google/analytics/tracking/android/GAUsage$Field;
    .end local v2           #nextLoc:I
    :cond_1
    if-gtz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 159
    :cond_2
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    :cond_3
    iget-object v5, p0, Lcom/google/analytics/tracking/android/GAUsage;->usedFields:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->clear()V

    .line 165
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 125
    .end local v1           #nextBoundary:I
    .end local v3           #result:Ljava/lang/StringBuilder;
    .end local v4           #spot:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setDisableUsage(Z)V
    .locals 1
    .parameter "disableUsage"

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/GAUsage;->disableUsage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V
    .locals 3
    .parameter "field"

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->disableUsage:Z

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->usedFields:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAUsage;->sequence:Ljava/lang/StringBuilder;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/GAUsage$Field;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
