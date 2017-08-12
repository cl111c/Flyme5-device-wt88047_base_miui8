.class Landroid/view/ThreadedRenderer$ProcessInitializer;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessInitializer"
.end annotation


# static fields
.field static sGraphicsStatsService:Landroid/view/IGraphicsStats;

.field static sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

.field private static sProcToken:Landroid/os/IBinder;


# instance fields
.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 419
    new-instance v0, Landroid/view/ThreadedRenderer$ProcessInitializer;

    invoke-direct {v0}, Landroid/view/ThreadedRenderer$ProcessInitializer;-><init>()V

    sput-object v0, Landroid/view/ThreadedRenderer$ProcessInitializer;->sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mInitialized:Z

    .line 425
    return-void
.end method

.method private static initAssetAtlas(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderProxy"    # J

    .prologue
    .line 449
    const-string v5, "assetatlas"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 450
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-static {v1}, Landroid/view/IAssetAtlas$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAssetAtlas;

    move-result-object v0

    .line 454
    .local v0, "atlas":Landroid/view/IAssetAtlas;
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPpid()I

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/IAssetAtlas;->isCompatible(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 455
    invoke-interface {v0}, Landroid/view/IAssetAtlas;->getBuffer()Landroid/view/GraphicBuffer;

    move-result-object v2

    .line 456
    .local v2, "buffer":Landroid/view/GraphicBuffer;
    if-eqz v2, :cond_0

    .line 457
    invoke-interface {v0}, Landroid/view/IAssetAtlas;->getMap()[J

    move-result-object v4

    .line 458
    .local v4, "map":[J
    if-eqz v4, :cond_2

    .line 460
    invoke-static {p0, v4}, Landroid/view/ThreadedRenderer$ProcessInitializer;->validateMap(Landroid/content/Context;[J)V

    .line 461
    # invokes: Landroid/view/ThreadedRenderer;->nSetAtlas(JLandroid/view/GraphicBuffer;[J)V
    invoke-static {p1, p2, v2, v4}, Landroid/view/ThreadedRenderer;->access$100(JLandroid/view/GraphicBuffer;[J)V

    .line 466
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v5, v6, :cond_0

    .line 467
    invoke-virtual {v2}, Landroid/view/GraphicBuffer;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    .end local v2    # "buffer":Landroid/view/GraphicBuffer;
    .end local v4    # "map":[J
    :catch_0
    move-exception v3

    .line 472
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "HardwareRenderer"

    const-string v6, "Could not acquire atlas"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static initGraphicsStats(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderProxy"    # J

    .prologue
    .line 434
    const-string v4, "graphicsstats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 435
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 447
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-static {v0}, Landroid/view/IGraphicsStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGraphicsStats;

    move-result-object v4

    sput-object v4, Landroid/view/ThreadedRenderer$ProcessInitializer;->sGraphicsStatsService:Landroid/view/IGraphicsStats;

    .line 437
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    sput-object v4, Landroid/view/ThreadedRenderer$ProcessInitializer;->sProcToken:Landroid/os/IBinder;

    .line 439
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 440
    .local v3, "pkg":Ljava/lang/String;
    sget-object v4, Landroid/view/ThreadedRenderer$ProcessInitializer;->sGraphicsStatsService:Landroid/view/IGraphicsStats;

    sget-object v5, Landroid/view/ThreadedRenderer$ProcessInitializer;->sProcToken:Landroid/os/IBinder;

    invoke-interface {v4, v3, v5}, Landroid/view/IGraphicsStats;->requestBufferForProcess(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 442
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    # invokes: Landroid/view/ThreadedRenderer;->nSetProcessStatsBuffer(JI)V
    invoke-static {p1, p2, v4}, Landroid/view/ThreadedRenderer;->access$000(JI)V

    .line 443
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HardwareRenderer"

    const-string v5, "Could not acquire gfx stats buffer"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static validateMap(Landroid/content/Context;[J)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "map"    # [J

    .prologue
    .line 477
    const-string v7, "Atlas"

    const-string v8, "Validating map..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 481
    .local v4, "preloadedPointers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 482
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v1

    .line 484
    .local v1, "drawables":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 485
    .local v0, "count":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v6, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 487
    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable$ConstantState;->addAtlasableBitmaps(Ljava/util/Collection;)I

    .line 488
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 489
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    iget-wide v8, v7, Landroid/graphics/Bitmap;->mNativeBitmap:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 491
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 486
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    .end local v3    # "j":I
    :cond_1
    const/4 v2, 0x0

    :goto_2
    array-length v7, p1

    if-ge v2, v7, :cond_3

    .line 495
    aget-wide v8, p1, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 496
    const-string v7, "Atlas"

    const-string v8, "Pointer 0x%X, not in getPreloadedDrawables?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget-wide v12, p1, v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-wide/16 v8, 0x0

    aput-wide v8, p1, v2

    .line 494
    :cond_2
    add-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 500
    :cond_3
    return-void
.end method


# virtual methods
.method declared-synchronized init(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderProxy"    # J

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 432
    :goto_0
    monitor-exit p0

    return-void

    .line 429
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mInitialized:Z

    .line 430
    invoke-static {p1, p2, p3}, Landroid/view/ThreadedRenderer$ProcessInitializer;->initGraphicsStats(Landroid/content/Context;J)V

    .line 431
    invoke-static {p1, p2, p3}, Landroid/view/ThreadedRenderer$ProcessInitializer;->initAssetAtlas(Landroid/content/Context;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
