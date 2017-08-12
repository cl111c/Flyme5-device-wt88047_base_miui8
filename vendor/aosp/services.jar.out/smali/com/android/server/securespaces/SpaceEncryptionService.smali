.class public Lcom/android/server/securespaces/SpaceEncryptionService;
.super Landroid/service/securespaces/ISpaceEncryptionService$Stub;
.source "SpaceEncryptionService.java"


# static fields
.field private static final ABORTCMD:I = -0xc9

.field private static final ACKCMD:I = -0xca

.field private static final DEBUG:Z = true

.field private static final DEFAULT_AUTH_DATA:Ljava/lang/String; = "4178522d9b7d8c122e09d8c21e499939"

.field private static final EF_MOUNT:I = -0x79

.field private static final EF_OVERWRITE:I = -0x7b

.field private static final EF_UNMOUNT:I = -0x7c

.field private static final EF_UPDATE:I = -0x7a

.field private static final KEY_DESC_HASH_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final SALT_LENGTH:I = 0x20

.field private static final SECONDARY_STORAGE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SpaceEncryptionService"

.field private static final USER_SALT_DIR_NAME:Ljava/lang/String; = ".Spaces"

.field private static final USER_SALT_FILE_NAME:Ljava/lang/String; = "salt"

.field private static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field private static final fekekDescriptionSalt:[B

.field private static final fnekDescriptionSalt:[B


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEcryptfsLock:Ljava/lang/Object;

.field private mEcryptfsMountedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

.field private mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 68
    const-string v0, "miui_security"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 93
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/securespaces/SpaceEncryptionService;->fekekDescriptionSalt:[B

    .line 105
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/securespaces/SpaceEncryptionService;->fnekDescriptionSalt:[B

    .line 133
    const-string v0, "SECONDARY_STORAGE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/securespaces/SpaceEncryptionService;->SECONDARY_STORAGE:Ljava/lang/String;

    return-void

    .line 93
    :array_0
    .array-data 1
        0x30t
        -0x46t
        0x14t
        -0x3ft
        -0x1et
        -0x50t
        -0x7et
        -0x23t
        -0x2dt
        -0x7t
        -0x7t
        0x6et
        0x2dt
        0x1ft
        0x46t
        -0x55t
        0x67t
        0x8t
        0x4bt
        -0xft
        -0x67t
        0x72t
        -0x45t
        0x78t
        0x33t
        -0x63t
        0x17t
        0x1bt
        -0x5t
        -0x1at
        -0x2et
        0x6at
    .end array-data

    .line 105
    :array_1
    .array-data 1
        0x7et
        0x5ct
        -0x66t
        0x60t
        -0x2et
        -0x31t
        -0x36t
        0x3et
        -0x73t
        0x35t
        -0x2at
        -0x48t
        -0x63t
        -0x73t
        0x11t
        0x10t
        0xdt
        0x36t
        0x6et
        0x5at
        0x16t
        -0x7t
        -0x46t
        0x7bt
        0x3ct
        -0x1bt
        -0x7at
        0x28t
        -0x6et
        -0x61t
        -0x69t
        -0x6et
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 129
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    .line 130
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    .line 205
    iput-object p1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mContext:Landroid/content/Context;

    .line 206
    invoke-static {}, Lcom/android/server/securespaces/PackageManagerQueue;->getInstance()Lcom/android/server/securespaces/PackageManagerQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    .line 208
    invoke-direct {p0}, Lcom/android/server/securespaces/SpaceEncryptionService;->initializeEcryptfsMounts()V

    .line 209
    return-void
.end method

.method private cleanUpUserDirectoriesLocked(I)V
    .locals 3
    .param p1, "userid"    # I

    .prologue
    .line 869
    if-eqz p1, :cond_0

    const/16 v1, 0x63

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3e7

    if-ne p1, v1, :cond_1

    .line 871
    :cond_0
    const-string v1, "SpaceEncryptionService"

    const-string v2, "Invalid user id."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :goto_0
    return-void

    .line 874
    :cond_1
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 875
    .local v0, "pms":Lcom/android/server/pm/PackageManagerService;
    if-eqz v0, :cond_2

    .line 876
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(I)I

    goto :goto_0

    .line 878
    :cond_2
    const-string v1, "SpaceEncryptionService"

    const-string v2, "Unable to clean-up user directories: pms == null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doEcryptfsMountLocked(IILjava/lang/String;)I
    .locals 12
    .param p1, "userId"    # I
    .param p2, "authId"    # I
    .param p3, "authData"    # Ljava/lang/String;

    .prologue
    .line 429
    const/4 v6, 0x0

    .line 431
    .local v6, "rc":I
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doEcryptfsMountLocked: userId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " authId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniInitssService()I

    move-result v6

    .line 434
    if-eqz v6, :cond_0

    .line 435
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doEcryptfsMountLocked - jniInitssService failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v9, -0x1

    .line 468
    :goto_0
    return v9

    .line 440
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->getUserSalt(I)[B

    move-result-object v8

    .line 443
    .local v8, "userSalt":[B
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateFekekDescription(I[B)Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "fekekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateFnekDescription(I[B)Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "fnekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateMediaFekekDescription(I[B)Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, "mediaFekekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateMediaFnekDescription(I[B)Ljava/lang/String;

    move-result-object v5

    .line 448
    .local v5, "mediaFnekDesc":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "encodedAuthData":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "cmdStr":Ljava/lang/String;
    const/16 v9, -0x79

    invoke-static {v9, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniSendssService(ILjava/lang/String;)I

    move-result v6

    .line 457
    if-eqz v6, :cond_1

    .line 458
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to execute mount cmdStr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_1
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniRecvssService()I

    move-result v7

    .line 462
    .local v7, "ret":I
    const/16 v9, -0xca

    if-ne v7, v9, :cond_2

    .line 463
    const/4 v6, 0x0

    :goto_1
    move v9, v6

    .line 468
    goto/16 :goto_0

    .line 465
    :cond_2
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Execution of mount cmdStr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " returned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v6}, Lcom/android/server/securespaces/SpaceEncryptionService;->getEncryptionCmdError(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v6, -0x1

    goto :goto_1
.end method

.method private doEcryptfsMountRemovableLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedRemovableLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 275
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniEcryptfsMountRemovable(ILjava/lang/String;)I

    move-result v0

    .line 276
    .local v0, "rc":I
    if-nez v0, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_1
    const-string v1, "SpaceEncryptionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call to jniEcryptfsMountRemovable() failed for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with rc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doEcryptfsOverwriteLocked(I)I
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 549
    const/4 v1, 0x0

    .line 551
    .local v1, "rc":I
    const-string v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doEcryptfsOverwriteLocked: userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v4, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 554
    :try_start_0
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniInitssService()I

    move-result v1

    .line 555
    if-eqz v1, :cond_0

    .line 556
    const-string v3, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jniInitssService failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v3, -0x1

    monitor-exit v4

    .line 573
    :goto_0
    return v3

    .line 560
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "cmdStr":Ljava/lang/String;
    const/16 v3, -0x7b

    invoke-static {v3, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniSendssService(ILjava/lang/String;)I

    move-result v1

    .line 562
    if-eqz v1, :cond_1

    .line 563
    const-string v3, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to execute overwrite cmdStr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_1
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniRecvssService()I

    move-result v2

    .line 567
    .local v2, "ret":I
    const/16 v3, -0xca

    if-ne v2, v3, :cond_2

    .line 568
    const/4 v1, 0x0

    .line 573
    :goto_1
    monitor-exit v4

    move v3, v1

    goto :goto_0

    .line 570
    :cond_2
    const-string v3, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Execution of overwrite cmdStr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->getEncryptionCmdError(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v1, -0x1

    goto :goto_1

    .line 574
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v2    # "ret":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private doEcryptfsUnmountLocked(I)I
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 482
    const/4 v1, 0x0

    .line 484
    .local v1, "rc":I
    const-string v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doEcryptfsUnmountLocked: Unmounting userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniInitssService()I

    move-result v1

    .line 487
    if-eqz v1, :cond_0

    .line 488
    const-string v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doEcryptfsUnmountLocked - jniInitssService failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v3, -0x1

    .line 503
    :goto_0
    return v3

    .line 491
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "cmdStr":Ljava/lang/String;
    const/16 v3, -0x7c

    invoke-static {v3, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniSendssService(ILjava/lang/String;)I

    move-result v1

    .line 493
    if-eqz v1, :cond_1

    .line 494
    const-string v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to execute umount cmdStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_1
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniRecvssService()I

    move-result v2

    .line 497
    .local v2, "ret":I
    const/16 v3, -0xca

    if-ne v2, v3, :cond_2

    .line 498
    const/4 v1, 0x0

    :goto_1
    move v3, v1

    .line 503
    goto :goto_0

    .line 500
    :cond_2
    const-string v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Execution of unmount cmdStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->getEncryptionCmdError(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private doEcryptfsUnmountRemovableLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedRemovableLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-static {p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniEcryptfsUnmountRemovable(I)I

    move-result v0

    .line 312
    .local v0, "rc":I
    if-nez v0, :cond_1

    .line 314
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    :cond_1
    const-string v1, "SpaceEncryptionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call to jniEcryptfsUnmountRemovable() failed for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with rc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doEcryptfsUpdateLocked(IILjava/lang/String;)I
    .locals 12
    .param p1, "userId"    # I
    .param p2, "authId"    # I
    .param p3, "authData"    # Ljava/lang/String;

    .prologue
    .line 509
    const/4 v6, 0x0

    .line 511
    .local v6, "rc":I
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doEcryptfsUpdateLocked: userId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " authId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniInitssService()I

    move-result v6

    .line 514
    if-eqz v6, :cond_0

    .line 515
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doEcryptfsUpdateLocked - jniInitssService failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v9, -0x1

    .line 542
    :goto_0
    return v9

    .line 520
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->getUserSalt(I)[B

    move-result-object v8

    .line 523
    .local v8, "userSalt":[B
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateFekekDescription(I[B)Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, "fekekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateFnekDescription(I[B)Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, "fnekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateMediaFekekDescription(I[B)Ljava/lang/String;

    move-result-object v4

    .line 526
    .local v4, "mediaFekekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateMediaFnekDescription(I[B)Ljava/lang/String;

    move-result-object v5

    .line 527
    .local v5, "mediaFnekDesc":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "encodedAuthData":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "cmdStr":Ljava/lang/String;
    const/16 v9, -0x7a

    invoke-static {v9, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniSendssService(ILjava/lang/String;)I

    move-result v6

    .line 532
    if-eqz v6, :cond_1

    .line 533
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to execute update cmdStr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_1
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniRecvssService()I

    move-result v7

    .line 536
    .local v7, "ret":I
    const/16 v9, -0xca

    if-ne v7, v9, :cond_2

    .line 537
    const/4 v6, 0x0

    :goto_1
    move v9, v6

    .line 542
    goto/16 :goto_0

    .line 539
    :cond_2
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Execution of update cmdStr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " returned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v6}, Lcom/android/server/securespaces/SpaceEncryptionService;->getEncryptionCmdError(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v6, -0x1

    goto :goto_1
.end method

.method private generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;
    .locals 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "fixedSalt"    # [B
    .param p3, "userId"    # I
    .param p4, "userSalt"    # [B

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 350
    .local v0, "H":[B
    :try_start_0
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 352
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 353
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 354
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 355
    invoke-virtual {v3, p4}, Ljava/security/MessageDigest;->update([B)V

    .line 356
    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 357
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 370
    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "desc":Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .end local v1    # "desc":Ljava/lang/String;
    .end local v3    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v4

    .line 358
    :catch_0
    move-exception v2

    .line 359
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "SpaceEncryptionService"

    const-string v5, "caught exception from MessageDigest: "

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private generateFekekDescription(I[B)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userSalt"    # [B

    .prologue
    .line 376
    const-string v0, "fekek"

    sget-object v1, Lcom/android/server/securespaces/SpaceEncryptionService;->fekekDescriptionSalt:[B

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateFnekDescription(I[B)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userSalt"    # [B

    .prologue
    .line 380
    const-string v0, "fnek"

    sget-object v1, Lcom/android/server/securespaces/SpaceEncryptionService;->fnekDescriptionSalt:[B

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateMediaFekekDescription(I[B)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userSalt"    # [B

    .prologue
    .line 384
    const-string v0, "media-fekek"

    sget-object v1, Lcom/android/server/securespaces/SpaceEncryptionService;->fekekDescriptionSalt:[B

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateMediaFnekDescription(I[B)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userSalt"    # [B

    .prologue
    .line 388
    const-string v0, "media-fnek"

    sget-object v1, Lcom/android/server/securespaces/SpaceEncryptionService;->fnekDescriptionSalt:[B

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptionCmdError(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 137
    packed-switch p1, :pswitch_data_0

    .line 199
    const-string v0, "Unknown Error."

    .line 201
    .local v0, "errStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 139
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_0
    const-string v0, "ABORTCMD"

    .line 140
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 142
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_1
    const-string v0, "ACKCMD"

    .line 143
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 145
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_2
    const-string v0, "CMD_ERR_OUT_OF_MEMORY"

    .line 146
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 148
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_3
    const-string v0, "CMD_ERR_NO_AUTH_DATA"

    .line 149
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 151
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_4
    const-string v0, "CMD_ERR_KEYRING"

    .line 152
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 154
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_5
    const-string v0, "CMD_ERR_PREPARE_DIR"

    .line 155
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 157
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_6
    const-string v0, "CMD_ERR_FILE_NOT_FOUND"

    .line 158
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 160
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_7
    const-string v0, "CMD_ERR_CREATE_KEY"

    .line 161
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 163
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_8
    const-string v0, "CMD_ERR_FIND_KEY"

    .line 164
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 166
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_9
    const-string v0, "CMD_ERR_LOAD_KEY"

    .line 167
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_a
    const-string v0, "CMD_ERR_HASHDATA"

    .line 170
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 172
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_b
    const-string v0, "CMD_ERR_MOUNT"

    .line 173
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_c
    const-string v0, "CMD_ERR_UMOUNT"

    .line 176
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 178
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_d
    const-string v0, "CMD_ERR_SYSCALL"

    .line 179
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 181
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_e
    const-string v0, "CMD_ERR_INVALID_ARGS"

    .line 182
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 184
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_f
    const-string v0, "CMD_ERR_FILE_COPY"

    .line 185
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 187
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_10
    const-string v0, "CMD_ERR_RANDOM_BYTE"

    .line 188
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 190
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_11
    const-string v0, "CMD_ERR_WRITE_KEYFILE"

    .line 191
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 193
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_12
    const-string v0, "CMD_ERR_MAP_FILE"

    .line 194
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 196
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_13
    const-string v0, "CMD_ERR_REMOVE_DIR"

    .line 197
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch -0xdc
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUserSalt(I)[B
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 392
    const/16 v7, 0x20

    new-array v3, v7, [B

    .line 394
    .local v3, "salt":[B
    new-instance v5, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    const-string v8, ".Spaces"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 395
    .local v5, "userSaltDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "salt"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 397
    .local v6, "userSaltFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 400
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 401
    .local v1, "finput":Ljava/io/FileInputStream;
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 402
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v1    # "finput":Ljava/io/FileInputStream;
    :goto_0
    return-object v3

    .line 403
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "SpaceEncryptionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file input exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 410
    .local v4, "sr":Ljava/security/SecureRandom;
    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 414
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 415
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 416
    .local v2, "foutput":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 417
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 418
    invoke-virtual {v6}, Ljava/io/File;->setReadOnly()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 419
    .end local v2    # "foutput":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 421
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SpaceEncryptionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file output exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initializeEcryptfsMounts()V
    .locals 12

    .prologue
    .line 601
    iget-object v9, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 603
    :try_start_0
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    new-instance v8, Ljava/io/FileInputStream;

    const-string v10, "/proc/mounts"

    invoke-direct {v8, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    .line 604
    .local v4, "pfr":Lcom/android/internal/util/ProcFileReader;
    new-instance v0, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/user/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 605
    .local v0, "dataUser":Ljava/lang/String;
    const-string v3, "/mnt/media_rw/sdcard1/_ss_"

    .line 606
    .local v3, "mntMediaRwSdcard1":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 612
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 614
    .local v6, "s1":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 615
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "ecryptfs"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 618
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v2, v8, 0x1

    .line 619
    .local v2, "i":I
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 620
    .local v7, "userId":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_1

    .line 621
    iget-object v8, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    .end local v2    # "i":I
    .end local v7    # "userId":Ljava/lang/Integer;
    :cond_0
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 654
    .end local v0    # "dataUser":Ljava/lang/String;
    .end local v3    # "mntMediaRwSdcard1":Ljava/lang/String;
    .end local v4    # "pfr":Lcom/android/internal/util/ProcFileReader;
    .end local v6    # "s1":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 655
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v8, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file not found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    return-void

    .line 623
    .restart local v0    # "dataUser":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "mntMediaRwSdcard1":Ljava/lang/String;
    .restart local v4    # "pfr":Lcom/android/internal/util/ProcFileReader;
    .restart local v6    # "s1":Ljava/lang/String;
    .restart local v7    # "userId":Ljava/lang/Integer;
    :cond_1
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUnmountLocked(I)I

    move-result v5

    .line 624
    .local v5, "rc":I
    if-eqz v5, :cond_0

    .line 625
    const-string v8, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ecryptfs unmount operation for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed with rc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 656
    .end local v0    # "dataUser":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "mntMediaRwSdcard1":Ljava/lang/String;
    .end local v4    # "pfr":Lcom/android/internal/util/ProcFileReader;
    .end local v5    # "rc":I
    .end local v6    # "s1":Ljava/lang/String;
    .end local v7    # "userId":Ljava/lang/Integer;
    :catch_1
    move-exception v1

    .line 657
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v8, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "io exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 659
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 631
    .restart local v0    # "dataUser":Ljava/lang/String;
    .restart local v3    # "mntMediaRwSdcard1":Ljava/lang/String;
    .restart local v4    # "pfr":Lcom/android/internal/util/ProcFileReader;
    .restart local v6    # "s1":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string v8, "/mnt/media_rw/sdcard1/_ss_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 632
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "ecryptfs_vfat"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 635
    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v2, v8, 0x1

    .line 636
    .restart local v2    # "i":I
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 637
    .restart local v7    # "userId":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_3

    .line 638
    iget-object v8, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 643
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniEcryptfsUnmountRemovable(I)I

    move-result v5

    .line 644
    .restart local v5    # "rc":I
    if-eqz v5, :cond_0

    .line 645
    const-string v8, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ecryptfs unmount removable operation for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed with rc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 653
    .end local v2    # "i":I
    .end local v5    # "rc":I
    .end local v6    # "s1":Ljava/lang/String;
    .end local v7    # "userId":Ljava/lang/Integer;
    :cond_4
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method private isSdcardVoldMounted()Z
    .locals 8

    .prologue
    .line 688
    const/4 v4, 0x0

    .line 690
    .local v4, "rc":Z
    :try_start_0
    const-string v0, "/dev/block/vold"

    .line 691
    .local v0, "dbv":Ljava/lang/String;
    const-string v2, "/mnt/media_rw/sdcard1"

    .line 692
    .local v2, "mms":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/util/ProcFileReader;

    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/proc/mounts"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    .line 693
    .local v3, "pfr":Lcom/android/internal/util/ProcFileReader;
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 696
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/dev/block/vold"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/mnt/media_rw/sdcard1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 698
    const/4 v4, 0x1

    .line 703
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->close()V

    .line 709
    .end local v0    # "dbv":Ljava/lang/String;
    .end local v2    # "mms":Ljava/lang/String;
    .end local v3    # "pfr":Lcom/android/internal/util/ProcFileReader;
    :goto_1
    return v4

    .line 701
    .restart local v0    # "dbv":Ljava/lang/String;
    .restart local v2    # "mms":Ljava/lang/String;
    .restart local v3    # "pfr":Lcom/android/internal/util/ProcFileReader;
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 704
    .end local v0    # "dbv":Ljava/lang/String;
    .end local v2    # "mms":Ljava/lang/String;
    .end local v3    # "pfr":Lcom/android/internal/util/ProcFileReader;
    :catch_0
    move-exception v1

    .line 705
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "SpaceEncryptionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 706
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 707
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "SpaceEncryptionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "io exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isUserEcryptfsMountedLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUserEcryptfsMountedRemovableLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static native jniEcryptfsMountRemovable(ILjava/lang/String;)I
.end method

.method private static native jniEcryptfsUnmountRemovable(I)I
.end method

.method private static native jniInitssService()I
.end method

.method private static native jniRecvssService()I
.end method

.method private static native jniSendssService(ILjava/lang/String;)I
.end method

.method private static native jniWipeRemovableUserDir(I)I
.end method

.method private processPackageManagerQueueLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPms:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_0

    .line 588
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 590
    :cond_0
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/pm/PackageManagerService;->processPackageManagerQueue(ILcom/android/server/securespaces/PackageManagerQueue;)V

    .line 592
    monitor-exit v1

    .line 593
    return-void

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private validatePermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 578
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 579
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission check failed, need: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 584
    :cond_0
    return-void
.end method


# virtual methods
.method public ecryptfsMount(IILjava/lang/String;)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "authId"    # I
    .param p3, "authData"    # Ljava/lang/String;

    .prologue
    .line 719
    const-string v1, "SpaceEncryptionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in ecryptfsMount("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authData)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 723
    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 725
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 728
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    const/4 v0, 0x1

    monitor-exit v2

    .line 743
    :goto_0
    return v0

    .line 733
    :cond_0
    if-nez p3, :cond_2

    .line 734
    const-string v1, "4178522d9b7d8c122e09d8c21e499939"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsMountLocked(IILjava/lang/String;)I

    move-result v0

    .line 739
    .local v0, "rc":I
    :goto_1
    if-nez v0, :cond_1

    .line 740
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->processPackageManagerQueueLocked(I)V

    .line 743
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 744
    .end local v0    # "rc":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 736
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsMountLocked(IILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .restart local v0    # "rc":I
    goto :goto_1
.end method

.method public ecryptfsMountRemovable(I)V
    .locals 11
    .param p1, "userId"    # I

    .prologue
    const/16 v10, 0x63

    .line 226
    const-string v7, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v7}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 228
    sget-object v7, Lcom/android/server/securespaces/SpaceEncryptionService;->SECONDARY_STORAGE:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 267
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v8, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 231
    if-ne p1, v10, :cond_2

    .line 232
    :try_start_0
    const-string v7, "SpaceEncryptionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ecryptfsMountRemovable() called with invalid userId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    :goto_1
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 233
    :cond_2
    const/4 v7, -0x1

    if-ne p1, v7, :cond_5

    .line 237
    const/4 v7, 0x0

    :try_start_1
    invoke-direct {p0, v7}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsMountRemovableLocked(I)V

    .line 239
    const-string v7, "user"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v5

    .line 240
    .local v5, "um":Landroid/os/IUserManager;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 241
    .local v1, "am":Landroid/app/IActivityManager;
    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    .line 243
    const/4 v7, 0x1

    :try_start_2
    invoke-interface {v5, v7}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    .line 244
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 245
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_1

    .line 246
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 247
    .local v4, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isSpace()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v7, :cond_3

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, v10, :cond_3

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    const/4 v9, 0x0

    invoke-interface {v1, v7, v9}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 252
    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsMountRemovableLocked(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 257
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v2

    .line 258
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "SpaceEncryptionService"

    const-string v9, "call to getUsers() failed"

    invoke-static {v7, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 261
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v7, "SpaceEncryptionService"

    const-string v9, "unable to contact UserManagerService.  it is running?"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 264
    .end local v1    # "am":Landroid/app/IActivityManager;
    .end local v5    # "um":Landroid/os/IUserManager;
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsMountRemovableLocked(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public ecryptfsOverwrite(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 824
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 826
    .local v0, "callingUid":I
    const-string v1, "SpaceEncryptionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in ecryptfsOverwrite("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 828
    const-string v1, "SpaceEncryptionService"

    const-string v2, "Calling UID must be System to overwrite the Ecryptfs keys."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/4 v1, -0x1

    .line 832
    :goto_0
    return v1

    .line 831
    :cond_0
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 832
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsOverwriteLocked(I)I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 833
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ecryptfsUnmount(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 750
    const-string v1, "SpaceEncryptionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in ecryptfsUnmount("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 754
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 757
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 758
    const/4 v0, 0x1

    monitor-exit v2

    .line 770
    :goto_0
    return v0

    .line 761
    :cond_0
    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 765
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUnmountLocked(I)I

    move-result v0

    .line 766
    .local v0, "rc":I
    if-nez v0, :cond_1

    .line 768
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 770
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 771
    .end local v0    # "rc":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ecryptfsUnmountRemovable(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 287
    const-string v2, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v2}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 289
    sget-object v2, Lcom/android/server/securespaces/SpaceEncryptionService;->SECONDARY_STORAGE:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 303
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v3, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 292
    const/16 v2, 0x63

    if-ne p1, v2, :cond_2

    .line 293
    :try_start_0
    const-string v2, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ecryptfsUnmountRemovable() called with invalid userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_1
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 294
    :cond_2
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 296
    :try_start_1
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 297
    .local v1, "ui":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUnmountRemovableLocked(I)V

    goto :goto_2

    .line 300
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ui":Ljava/lang/Integer;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUnmountRemovableLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public ecryptfsUpdate(IILjava/lang/String;)I
    .locals 7
    .param p1, "userId"    # I
    .param p2, "authId"    # I
    .param p3, "authData"    # Ljava/lang/String;

    .prologue
    .line 782
    const-string v4, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in ecryptfsUpdate("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", authData)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const-string v4, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v4}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 789
    iget-object v5, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 790
    :try_start_0
    const-string v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v4}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 795
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedLocked(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 796
    const/4 v4, -0x1

    monitor-exit v5

    .line 815
    :goto_0
    return v4

    .line 799
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    .line 800
    .local v3, "userManager":Lcom/android/server/pm/UserManagerService;
    invoke-virtual {v3, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoPartial(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 803
    .local v2, "ui":Landroid/content/pm/UserInfo;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 805
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez p2, :cond_2

    .line 806
    const/16 v4, 0x20

    new-array v0, v4, [B

    .line 807
    .local v0, "randomAuth":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 808
    .local v1, "sr":Ljava/security/SecureRandom;
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 809
    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .line 815
    .end local v0    # "randomAuth":[B
    .end local v1    # "sr":Ljava/security/SecureRandom;
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUpdateLocked(IILjava/lang/String;)I

    move-result v4

    monitor-exit v5

    goto :goto_0

    .line 816
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    .end local v3    # "userManager":Lcom/android/server/pm/UserManagerService;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 811
    .restart local v2    # "ui":Landroid/content/pm/UserInfo;
    .restart local v3    # "userManager":Lcom/android/server/pm/UserManagerService;
    :cond_2
    :try_start_1
    const-string p3, "4178522d9b7d8c122e09d8c21e499939"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public isAuthProtected(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 931
    const-string v2, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v2}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 934
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 935
    .local v1, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 937
    .local v0, "isProtected":Z
    :goto_0
    const-string v2, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAuthProtected: userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const-string v2, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lpu.isLockPasswordEnabled() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const-string v2, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lpu.isLockPatternEnabled() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    return v0

    .line 935
    .end local v0    # "isProtected":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataDirectoryTmpfs()Z
    .locals 7

    .prologue
    .line 663
    const/4 v3, 0x0

    .line 665
    .local v3, "rc":Z
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "dataDir":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/util/ProcFileReader;

    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/proc/mounts"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    .line 667
    .local v2, "pfr":Lcom/android/internal/util/ProcFileReader;
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 670
    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tmpfs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tmpfs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 673
    const/4 v3, 0x1

    .line 678
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->close()V

    .line 684
    .end local v0    # "dataDir":Ljava/lang/String;
    .end local v2    # "pfr":Lcom/android/internal/util/ProcFileReader;
    :goto_1
    return v3

    .line 676
    .restart local v0    # "dataDir":Ljava/lang/String;
    .restart local v2    # "pfr":Lcom/android/internal/util/ProcFileReader;
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 679
    .end local v0    # "dataDir":Ljava/lang/String;
    .end local v2    # "pfr":Lcom/android/internal/util/ProcFileReader;
    :catch_0
    move-exception v1

    .line 680
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v4, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 681
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 682
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "io exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public needAirlockUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 947
    const-string v2, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v2}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 949
    const/4 v0, 0x0

    .line 950
    .local v0, "needAirLockUser":Z
    iget-object v3, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 951
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v1

    .line 952
    .local v1, "needsEcryptfsMount":Z
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isAuthProtected(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 953
    const/4 v0, 0x1

    .line 955
    :cond_0
    monitor-exit v3

    return v0

    .line 956
    .end local v1    # "needsEcryptfsMount":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public needsEcryptfsMount(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 842
    const-string v3, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v3}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 844
    iget-object v3, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 845
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedLocked(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 848
    monitor-exit v3

    .line 862
    :goto_0
    return v2

    .line 851
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    .line 852
    .local v1, "userManager":Lcom/android/server/pm/UserManagerService;
    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoPartial(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 853
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_1

    .line 854
    const-string v4, "SpaceEncryptionService"

    const-string v5, "needsEcryptfsMount - user does not exist for given user id."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    monitor-exit v3

    goto :goto_0

    .line 863
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    .end local v1    # "userManager":Lcom/android/server/pm/UserManagerService;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 857
    .restart local v0    # "ui":Landroid/content/pm/UserInfo;
    .restart local v1    # "userManager":Lcom/android/server/pm/UserManagerService;
    :cond_1
    if-eqz p1, :cond_2

    const/16 v4, 0x63

    if-ne p1, v4, :cond_3

    .line 859
    :cond_2
    :try_start_1
    monitor-exit v3

    goto :goto_0

    .line 862
    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEncryptedSpace()Z

    move-result v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public processEncryption(Landroid/content/pm/UserInfo;)Z
    .locals 7
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 899
    const-string v4, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v4}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 901
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 902
    .local v1, "userId":I
    iget-object v4, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 903
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->cleanUpUserDirectoriesLocked(I)V

    .line 906
    invoke-virtual {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 907
    const-string v3, "SpaceEncryptionService"

    const-string v5, "processEncryption no need to encrypt the user."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    monitor-exit v4

    .line 924
    :goto_0
    return v2

    .line 912
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v5, v6}, Lcom/android/server/securespaces/SpaceEncryptionService;->ecryptfsMount(IILjava/lang/String;)I

    move-result v0

    .line 913
    .local v0, "rc":I
    if-gez v0, :cond_1

    .line 914
    const-string v2, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processEncryption ecryptfsMount failed with rc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 921
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 922
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v3, v5}, Lcom/android/server/securespaces/SpaceEncryptionService;->ecryptfsUpdate(IILjava/lang/String;)I

    .line 924
    :cond_2
    monitor-exit v4

    goto :goto_0

    .line 925
    .end local v0    # "rc":I
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setAirlockWallpaperToUser(I)V
    .locals 8
    .param p1, "userIdOrig"    # I

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0x63

    .line 1000
    const-string v4, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v4}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1002
    if-ne p1, v6, :cond_1

    .line 1003
    const-string v4, "SpaceEncryptionService"

    const-string v5, "Invalid userid."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 1009
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1010
    .local v2, "srcWallpaperFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-static {v6}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1012
    .local v0, "dstWallpaperFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1013
    invoke-static {v2, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1014
    const-string v4, "SpaceEncryptionService"

    const-string v5, "Copy of wallpaper file failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_2
    :goto_1
    const/16 v4, 0x1c0

    invoke-static {v0, v4, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    move-result v4

    if-eqz v4, :cond_3

    .line 1021
    const-string v4, "SpaceEncryptionService"

    const-string v5, "Set permissions of wallpaper file failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper_info.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1030
    .local v3, "srcWallpaperInfoFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {v6}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper_info.xml"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1031
    .local v1, "dstWallpaperInfoFile":Ljava/io/File;
    invoke-static {v3, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1032
    const-string v4, "SpaceEncryptionService"

    const-string v5, "Copy of wallpaper info file failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1017
    .end local v1    # "dstWallpaperInfoFile":Ljava/io/File;
    .end local v3    # "srcWallpaperInfoFile":Ljava/io/File;
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public setOpAddExcludeFromWipe(ILjava/lang/String;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1158
    const-string v2, "SpaceEncryptionService"

    const-string v3, "setOpAddExcludeFromWipe(%d, %s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const-string v2, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v2}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1163
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1164
    :try_start_0
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p2, p1}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;I)V

    .line 1165
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v2}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    .line 1166
    monitor-exit v1

    .line 1169
    :goto_0
    return v0

    .line 1166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    .line 1169
    goto :goto_0
.end method

.method public setOpCleanUserData(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1143
    const-string v0, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1147
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, p1}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(II)V

    .line 1148
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    .line 1149
    monitor-exit v1

    .line 1150
    const/4 v0, 0x1

    .line 1152
    :goto_0
    return v0

    .line 1149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpClearUserData(ILjava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1128
    const-string v0, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1132
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, p2, p1}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;I)V

    .line 1133
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    .line 1134
    monitor-exit v1

    .line 1135
    const/4 v0, 0x1

    .line 1137
    :goto_0
    return v0

    .line 1134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpCreateUserConfig(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1113
    const-string v0, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1117
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p1}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(II)V

    .line 1118
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    .line 1119
    monitor-exit v1

    .line 1120
    const/4 v0, 0x1

    .line 1122
    :goto_0
    return v0

    .line 1119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpCreateUserData(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "seinfo"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1038
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1041
    iget-object v6, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v6

    .line 1042
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v1, 0x0

    move-object v2, p2

    move v3, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;IILjava/lang/String;)V

    .line 1043
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    .line 1044
    monitor-exit v6

    .line 1045
    const/4 v0, 0x1

    .line 1047
    :cond_0
    return v0

    .line 1044
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOpDeleteCacheFiles(ILjava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1083
    const-string v0, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1087
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p2, p1}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;I)V

    .line 1088
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    .line 1089
    monitor-exit v1

    .line 1090
    const/4 v0, 0x1

    .line 1092
    :goto_0
    return v0

    .line 1089
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1092
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpDeleteCodeCacheFiles(ILjava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1098
    const-string v0, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1102
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p2, p1}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;I)V

    .line 1103
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    .line 1104
    monitor-exit v1

    .line 1105
    const/4 v0, 0x1

    .line 1107
    :goto_0
    return v0

    .line 1104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpLinkNativeLibraryDir(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "dataPath"    # Ljava/lang/String;
    .param p3, "newNativePath32"    # Ljava/lang/String;

    .prologue
    .line 1068
    const-string v0, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1072
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2, p3, p1}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1073
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    .line 1074
    monitor-exit v1

    .line 1075
    const/4 v0, 0x1

    .line 1077
    :goto_0
    return v0

    .line 1074
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1077
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpRemove(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1053
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1056
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1057
    :try_start_0
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2, p1}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;I)V

    .line 1058
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v2}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    .line 1059
    monitor-exit v1

    .line 1062
    :goto_0
    return v0

    .line 1059
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1062
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchUser(I)Z
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 962
    const-string v7, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v7}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 964
    const/4 v4, 0x0

    .line 966
    .local v4, "rc":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 967
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result v4

    .line 968
    if-eqz v4, :cond_2

    .line 969
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v6

    .line 971
    .local v6, "wm":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    .line 977
    .local v2, "iters":I
    :cond_0
    const-string v7, "SpaceEncryptionService"

    const-string v8, "waiting for current user to be updated..."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const-wide/16 v8, 0xfa

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 979
    add-int/lit8 v2, v2, 0x1

    .line 980
    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, p1, :cond_1

    const/16 v7, 0x8

    if-lt v2, v7, :cond_0

    .line 981
    :cond_1
    invoke-interface {v6}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 994
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v2    # "iters":I
    .end local v6    # "wm":Landroid/view/IWindowManager;
    :cond_2
    :goto_0
    return v4

    .line 983
    :catch_0
    move-exception v3

    .line 984
    .local v3, "npe":Ljava/lang/NullPointerException;
    const-string v7, "SpaceEncryptionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "npe encountered in switchUser("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const/4 v4, 0x0

    .line 993
    goto :goto_0

    .line 986
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v5

    .line 987
    .local v5, "rex":Landroid/os/RemoteException;
    const-string v7, "SpaceEncryptionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "binder call threw a remote exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/4 v4, 0x0

    .line 993
    goto :goto_0

    .line 989
    .end local v5    # "rex":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 990
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v7, "SpaceEncryptionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "interrupted while waiting for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 992
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public wipeRemovableUserDir(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 324
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 327
    const/16 v1, 0x63

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    if-gez p1, :cond_1

    .line 328
    :cond_0
    :try_start_0
    const-string v1, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wipeRemovableUserDir() called with invalid userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    monitor-exit v2

    .line 337
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-static {p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniWipeRemovableUserDir(I)I

    move-result v0

    .line 332
    .local v0, "rc":I
    if-eqz v0, :cond_2

    .line 333
    const-string v1, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call to jniWipeRemovableUserDir() failed for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with rc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "rc":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
