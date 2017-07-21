.class public Lcom/android/server/power/PowerManagerServiceInjector;
.super Ljava/lang/Object;
.source "PowerManagerServiceInjector.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "PowerManagerServiceInjector"

.field private static sHandler:Landroid/os/Handler;

.field private static sLock:Ljava/lang/Object;

.field private static sPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

.field private static sPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private static sUidStateChangeCallback:Lcom/android/internal/app/IUidStateChangeCallback;

.field private static sUidStateHelper:Lcom/android/server/UidStateHelper;

.field private static sWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/android/server/power/PowerManagerServiceInjector$2;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerServiceInjector$2;-><init>()V

    sput-object v0, Lcom/android/server/power/PowerManagerServiceInjector;->sUidStateChangeCallback:Lcom/android/internal/app/IUidStateChangeCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/UidStateHelper;)Lcom/android/server/UidStateHelper;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UidStateHelper;

    .prologue
    .line 19
    sput-object p0, Lcom/android/server/power/PowerManagerServiceInjector;->sUidStateHelper:Lcom/android/server/UidStateHelper;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy;
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy;

    .prologue
    .line 19
    sput-object p0, Lcom/android/server/power/PowerManagerServiceInjector;->sPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    return-object p0
.end method

.method public static getPartialWakeLockHoldByUid(I)I
    .locals 8
    .param p0, "uid"    # I

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, "wakeLockNum":I
    sget-object v6, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 71
    :try_start_0
    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 72
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 73
    .local v4, "ws":Landroid/os/WorkSource;
    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-eq v5, p0, :cond_1

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    if-ne v5, p0, :cond_0

    .line 76
    :cond_1
    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v7, 0xffff

    and-int v3, v5, v7

    .line 77
    .local v3, "wakeLockType":I
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v3    # "wakeLockType":I
    .end local v4    # "ws":Landroid/os/WorkSource;
    :cond_2
    monitor-exit v6

    .line 82
    return v2

    .line 81
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private static getRealOwners(Lcom/android/server/power/PowerManagerService$WakeLock;)[I
    .locals 5
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    const/4 v4, 0x0

    .line 54
    new-array v2, v4, [I

    .line 55
    .local v2, "realOwners":[I
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-nez v3, :cond_1

    .line 56
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 57
    iget v3, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    aput v3, v2, v4

    .line 65
    :cond_0
    return-object v2

    .line 59
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 60
    .local v0, "N":I
    new-array v2, v0, [I

    .line 61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 62
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v3

    aput v3, v2, v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getScreenWakeLockHoldByUid(I)I
    .locals 8
    .param p0, "uid"    # I

    .prologue
    .line 86
    const/4 v2, 0x0

    .line 87
    .local v2, "wakeLockNum":I
    sget-object v6, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 88
    :try_start_0
    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 89
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 90
    .local v4, "ws":Landroid/os/WorkSource;
    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-eq v5, p0, :cond_1

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    if-ne v5, p0, :cond_0

    .line 93
    :cond_1
    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v7, 0xffff

    and-int v3, v5, v7

    .line 94
    .local v3, "wakeLockType":I
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 98
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    .line 99
    goto :goto_0

    .line 104
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v3    # "wakeLockType":I
    .end local v4    # "ws":Landroid/os/WorkSource;
    :cond_2
    monitor-exit v6

    .line 105
    return v2

    .line 104
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public static init(Lcom/android/server/power/PowerManagerService;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 2
    .param p0, "powerManagerService"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/PowerManagerService;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "allWakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/PowerManagerService$WakeLock;>;"
    sput-object p0, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 34
    sput-object p1, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    .line 35
    sput-object p2, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/power/PowerManagerServiceInjector;->sHandler:Landroid/os/Handler;

    .line 38
    sget-object v0, Lcom/android/server/power/PowerManagerServiceInjector;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/PowerManagerServiceInjector$1;

    invoke-direct {v1}, Lcom/android/server/power/PowerManagerServiceInjector$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method

.method private static isBackgroundScreenWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 8
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    const/4 v6, 0x1

    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, "foreground":Z
    invoke-static {p0}, Lcom/android/server/power/PowerManagerServiceInjector;->getRealOwners(Lcom/android/server/power/PowerManagerService$WakeLock;)[I

    move-result-object v5

    .line 111
    .local v5, "realOwners":[I
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    .line 112
    .local v4, "realOwner":I
    sget-object v7, Lcom/android/server/power/PowerManagerServiceInjector;->sUidStateHelper:Lcom/android/server/UidStateHelper;

    invoke-virtual {v7, v4, v6}, Lcom/android/server/UidStateHelper;->isUidForeground(IZ)Z

    move-result v7

    or-int/2addr v1, v7

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v4    # "realOwner":I
    :cond_0
    if-nez v1, :cond_1

    :goto_1
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static isWakelockDisabledByPolicy(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 9
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "disabled":Z
    invoke-static {p0}, Lcom/android/server/power/PowerManagerServiceInjector;->getRealOwners(Lcom/android/server/power/PowerManagerService$WakeLock;)[I

    move-result-object v5

    .line 120
    .local v5, "realOwners":[I
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    .line 121
    .local v4, "realOwner":I
    sget-object v6, Lcom/android/server/power/PowerManagerServiceInjector;->sPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/power/PowerManagerServiceInjector;->sPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Lcom/miui/whetstone/PowerKeeperPolicy;->isWakelockDisabledByPolicy(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 122
    const/4 v1, 0x1

    .line 123
    const-string v6, "PowerManagerServiceInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wakeLock:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] is disabled by policy"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v4    # "realOwner":I
    :cond_0
    return v1

    .line 120
    .restart local v4    # "realOwner":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static restoreScreenWakeLockDisabledState(I)V
    .locals 12
    .param p0, "uid"    # I

    .prologue
    .line 214
    sget-object v9, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v9

    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, "changed":Z
    :try_start_0
    sget-object v8, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 217
    .local v7, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v8, v7, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v10, 0xffff

    and-int/2addr v8, v10

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    .line 221
    :sswitch_0
    invoke-static {v7}, Lcom/android/server/power/PowerManagerServiceInjector;->getRealOwners(Lcom/android/server/power/PowerManagerService$WakeLock;)[I

    move-result-object v6

    .line 222
    .local v6, "realOwners":[I
    move-object v0, v6

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget v5, v0, v3

    .line 223
    .local v5, "realOwner":I
    if-ne v5, p0, :cond_1

    iget-boolean v8, v7, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v8, :cond_1

    .line 224
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/power/PowerManagerServiceInjector;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v8

    or-int/2addr v1, v8

    .line 225
    sget-object v8, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v8, v7}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 226
    const-string v8, "PowerManagerServiceInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screen wakeLock:["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] enabled"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    .end local v0    # "arr$":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "realOwner":I
    .end local v6    # "realOwners":[I
    .end local v7    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 222
    .restart local v0    # "arr$":[I
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "realOwner":I
    .restart local v6    # "realOwners":[I
    .restart local v7    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 235
    .end local v0    # "arr$":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "realOwner":I
    .end local v6    # "realOwners":[I
    .end local v7    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    if-eqz v1, :cond_3

    .line 236
    :try_start_1
    sget-object v8, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v8}, Lcom/android/server/power/PowerManagerService;->setWakeLockDirtyLocked()V

    .line 237
    sget-object v8, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v8}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 239
    :cond_3
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    return-void

    .line 217
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public static setUidPartialWakeLockDisabledState(ILjava/lang/String;Z)V
    .locals 12
    .param p0, "uid"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "disabled"    # Z

    .prologue
    .line 252
    if-nez p1, :cond_0

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 253
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can not disable all wakelock for uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 256
    :cond_0
    sget-object v9, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v9

    .line 257
    :try_start_0
    sget-object v8, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 258
    .local v7, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    const/4 v1, 0x0

    .line 259
    .local v1, "changed":Z
    iget v8, v7, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v10, 0xffff

    and-int/2addr v8, v10

    packed-switch v8, :pswitch_data_0

    .line 272
    :cond_2
    :goto_1
    if-eqz v1, :cond_1

    .line 273
    iget-boolean v8, v7, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v8, :cond_5

    .line 274
    const-string v8, "PowerManagerServiceInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set partial wakelock disabled:["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-object v8, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v8, v7}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 280
    :goto_2
    sget-object v8, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v8}, Lcom/android/server/power/PowerManagerService;->setWakeLockDirtyLocked()V

    .line 281
    sget-object v8, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v8}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_0

    .line 284
    .end local v1    # "changed":Z
    .end local v7    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 261
    .restart local v1    # "changed":Z
    .restart local v7    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :pswitch_0
    :try_start_1
    invoke-static {v7}, Lcom/android/server/power/PowerManagerServiceInjector;->getRealOwners(Lcom/android/server/power/PowerManagerService$WakeLock;)[I

    move-result-object v6

    .line 262
    .local v6, "realOwners":[I
    move-object v0, v6

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v4, :cond_2

    aget v5, v0, v3

    .line 263
    .local v5, "realOwner":I
    if-ne v5, p0, :cond_4

    if-eqz p1, :cond_3

    iget-object v8, v7, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 264
    :cond_3
    invoke-static {v7, p2}, Lcom/android/server/power/PowerManagerServiceInjector;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v1

    .line 265
    goto :goto_1

    .line 262
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 277
    .end local v0    # "arr$":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "realOwner":I
    .end local v6    # "realOwners":[I
    :cond_5
    const-string v8, "PowerManagerServiceInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set partial wakelock enabled:["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget-object v8, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v8, v7}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_2

    .line 284
    .end local v1    # "changed":Z
    .end local v7    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_6
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    return-void

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z
    .locals 2
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p1, "disabled"    # Z

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v1, p1, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 134
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 136
    :cond_0
    return v0
.end method

.method public static updateAllPartialWakeLockDisableState()V
    .locals 7

    .prologue
    .line 160
    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "changed":Z
    :try_start_0
    sget-object v4, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 163
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v4, v6

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 165
    :pswitch_0
    invoke-static {v3}, Lcom/android/server/power/PowerManagerServiceInjector;->isWakelockDisabledByPolicy(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v1

    .line 166
    .local v1, "disabled":Z
    invoke-static {v3, v1}, Lcom/android/server/power/PowerManagerServiceInjector;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v4

    or-int/2addr v0, v4

    .line 167
    goto :goto_0

    .line 172
    .end local v1    # "disabled":Z
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_0
    if-eqz v0, :cond_1

    .line 173
    sget-object v4, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService;->setWakeLockDirtyLocked()V

    .line 174
    sget-object v4, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 176
    :cond_1
    monitor-exit v5

    .line 177
    return-void

    .line 176
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static updateAllScreenWakeLockDisabledStateLocked()V
    .locals 6

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "changed":Z
    sget-object v3, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 184
    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 188
    :sswitch_0
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    .line 191
    const-string v3, "PowerManagerServiceInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screen wakeLock:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] not by window manager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_1
    if-eqz v0, :cond_2

    .line 207
    sget-object v3, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService;->setWakeLockDirtyLocked()V

    .line 209
    :cond_2
    return-void

    .line 184
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method static updateWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)V
    .locals 4
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p1, "notify"    # Z

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "changed":Z
    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v3, 0xffff

    and-int/2addr v2, v3

    packed-switch v2, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v2, :cond_1

    .line 154
    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 155
    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 157
    :cond_1
    return-void

    .line 144
    :pswitch_0
    invoke-static {p0}, Lcom/android/server/power/PowerManagerServiceInjector;->isWakelockDisabledByPolicy(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v1

    .line 145
    .local v1, "disabled":Z
    invoke-static {p0, v1}, Lcom/android/server/power/PowerManagerServiceInjector;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->setWakeLockDirtyLocked()V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
