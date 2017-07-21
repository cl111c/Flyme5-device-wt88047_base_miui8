.class final Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HandleStateByPid"
.end annotation


# instance fields
.field private final mHandlesStat:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;",
            ">;"
        }
    .end annotation
.end field

.field private mPid:I

.field final synthetic this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;I)V
    .locals 1
    .param p2, "pid"    # I

    .prologue
    .line 243
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mPid:I

    .line 245
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    .line 246
    return-void
.end method

.method static synthetic access$300(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->pauseSensorsForPending()V

    return-void
.end method

.method private getIndexForConnectHandle(Landroid/os/IBinder;I)I
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "handle"    # I

    .prologue
    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    return v0
.end method

.method private getSensorConnectState(Landroid/os/IBinder;I)Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    .locals 3
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "handle"    # I

    .prologue
    .line 248
    invoke-direct {p0, p1, p2}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->getIndexForConnectHandle(Landroid/os/IBinder;I)I

    move-result v1

    .line 249
    .local v1, "sensorKey":I
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .line 250
    .local v0, "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .end local v0    # "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    invoke-direct {v0, v2}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;)V

    .line 252
    .restart local v0    # "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    :cond_0
    return-object v0
.end method

.method private pauseSensorsForPending()V
    .locals 8

    .prologue
    .line 348
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    iget-object v2, v2, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy;->mAppHandleState:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$600(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 350
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .line 351
    .local v1, "sensorState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mState:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    if-eqz v2, :cond_0

    .line 353
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    .line 354
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    .line 355
    const-string v2, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pauseSensorsForPending, uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mUid:I
    invoke-static {v5}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->access$400(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "connect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sam = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mSamplingPeriodNs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " max = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mMaxBatchReportLatencyNs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    const/4 v4, 0x0

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->nativesetSensorState(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;Z)V
    invoke-static {v2, v1, v4}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->access$500(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;Z)V

    .line 349
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    .end local v1    # "sensorState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    :cond_1
    monitor-exit v3

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private saveParamToHandle(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;Landroid/os/IBinder;IZJJI)V
    .locals 1
    .param p1, "handleState"    # Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    .param p2, "iBinder"    # Landroid/os/IBinder;
    .param p3, "handle"    # I
    .param p4, "st"    # Z
    .param p5, "sam"    # J
    .param p7, "max"    # J
    .param p9, "res"    # I

    .prologue
    .line 257
    iput-boolean p4, p1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mState:Z

    .line 258
    iput-object p2, p1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mBinder:Landroid/os/IBinder;

    .line 259
    iput p3, p1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mHandle:I

    .line 260
    iput-wide p5, p1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mSamplingPeriodNs:J

    .line 261
    iput-wide p7, p1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mMaxBatchReportLatencyNs:J

    .line 262
    iput p9, p1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mReserve:I

    .line 263
    return-void
.end method

.method private startTimerForPendingStat(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;)V
    .locals 4
    .param p1, "handleState"    # Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .prologue
    .line 321
    invoke-virtual {p1}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->clearTimer()V

    .line 322
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendSensor:Ljava/util/Timer;

    .line 323
    new-instance v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid$1;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid$1;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;)V

    iput-object v0, p1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mTask:Ljava/util/TimerTask;

    .line 328
    iget-object v0, p1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendSensor:Ljava/util/Timer;

    iget-object v1, p1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 329
    return-void
.end method


# virtual methods
.method public delHandle(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "handle"    # I

    .prologue
    .line 298
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    monitor-enter v3

    .line 299
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->getIndexForConnectHandle(Landroid/os/IBinder;I)I

    move-result v1

    .line 300
    .local v1, "sensorKey":I
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .line 301
    .local v0, "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    if-eqz v0, :cond_2

    .line 303
    iget-boolean v2, v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mIsCalledByPower:Z

    if-eqz v2, :cond_1

    .line 305
    iget-boolean v2, v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    if-eqz v2, :cond_0

    .line 306
    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->clearTimer()V

    .line 307
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    .line 309
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mIsCalledByPower:Z

    .line 310
    monitor-exit v3

    .line 318
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->clearTimer()V

    .line 315
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 317
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    .end local v1    # "sensorKey":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getFirstSensorHandleByPid()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 397
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    monitor-enter v1

    .line 398
    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    iget v0, v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mHandle:I

    monitor-exit v1

    .line 399
    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public killSensors()V
    .locals 5

    .prologue
    .line 382
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    monitor-enter v3

    .line 383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 384
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .line 385
    .local v1, "sensorState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    if-nez v1, :cond_0

    .line 383
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_0
    iget-boolean v2, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mState:Z

    if-eqz v2, :cond_1

    .line 387
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    .line 388
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    .line 389
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    const/4 v4, 0x0

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->nativesetSensorState(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;Z)V
    invoke-static {v2, v1, v4}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->access$500(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;Z)V

    .line 391
    :cond_1
    invoke-virtual {v1}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->clearTimer()V

    .line 392
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1

    .line 394
    .end local v1    # "sensorState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    return-void
.end method

.method public pauseSensors()V
    .locals 8

    .prologue
    .line 332
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    monitor-enter v3

    .line 333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 334
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .line 335
    .local v1, "sensorState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    if-nez v1, :cond_1

    .line 333
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_1
    iget-boolean v2, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mState:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    if-nez v2, :cond_0

    .line 337
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    .line 338
    invoke-virtual {v1}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->clearTimer()V

    .line 339
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    .line 340
    const-string v2, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pauseSensors, uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mUid:I
    invoke-static {v5}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->access$400(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "connect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sam = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mSamplingPeriodNs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " max = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mMaxBatchReportLatencyNs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    const/4 v4, 0x0

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->nativesetSensorState(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;Z)V
    invoke-static {v2, v1, v4}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->access$500(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;Z)V

    goto :goto_1

    .line 345
    .end local v1    # "sensorState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    return-void
.end method

.method public resumeSensors()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 364
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    monitor-enter v3

    .line 365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 366
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .line 367
    .local v1, "sensorState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    if-nez v1, :cond_1

    .line 365
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_1
    iget-boolean v2, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    if-ne v2, v8, :cond_0

    .line 369
    iget-boolean v2, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mState:Z

    if-nez v2, :cond_0

    .line 370
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    .line 371
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    .line 372
    const-string v2, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumeSensors, uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    # getter for: Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->mUid:I
    invoke-static {v5}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->access$400(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "connect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sam = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mSamplingPeriodNs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " max = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mMaxBatchReportLatencyNs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    const/4 v4, 0x1

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->nativesetSensorState(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;Z)V
    invoke-static {v2, v1, v4}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;->access$500(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;Z)V

    goto :goto_1

    .line 378
    .end local v1    # "sensorState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 406
    const-string v3, " mPid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 409
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    .line 410
    .local v0, "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    invoke-virtual {v0, v2}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->toString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    .end local v0    # "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public updateParams(Landroid/os/IBinder;IZJJI)V
    .locals 12
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "handle"    # I
    .param p3, "st"    # Z
    .param p4, "sam"    # J
    .param p6, "max"    # J
    .param p8, "res"    # I

    .prologue
    .line 267
    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    monitor-enter v11

    .line 268
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->getSensorConnectState(Landroid/os/IBinder;I)Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    move-result-object v2

    .line 270
    .local v2, "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    iget-boolean v0, v2, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mIsCalledByPower:Z

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mIsCalledByPower:Z

    .line 273
    monitor-exit v11

    .line 277
    :goto_0
    return-void

    :cond_0
    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    .line 275
    invoke-direct/range {v1 .. v10}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->saveParamToHandle(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;Landroid/os/IBinder;IZJJI)V

    .line 276
    monitor-exit v11

    goto :goto_0

    .end local v2    # "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateParamsAndSetPendingState(Landroid/os/IBinder;IZJJI)V
    .locals 12
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "handle"    # I
    .param p3, "st"    # Z
    .param p4, "sam"    # J
    .param p6, "max"    # J
    .param p8, "res"    # I

    .prologue
    .line 279
    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->mHandlesStat:Landroid/util/SparseArray;

    monitor-enter v11

    .line 280
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->getSensorConnectState(Landroid/os/IBinder;I)Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;

    move-result-object v2

    .line 282
    .local v2, "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    iget-boolean v0, v2, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mIsCalledByPower:Z

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mIsCalledByPower:Z

    .line 285
    monitor-exit v11

    .line 294
    :goto_0
    return-void

    :cond_0
    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    .line 287
    invoke-direct/range {v1 .. v10}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->saveParamToHandle(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;Landroid/os/IBinder;IZJJI)V

    .line 288
    iget-boolean v0, v2, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    if-eqz v0, :cond_1

    monitor-exit v11

    goto :goto_0

    .line 293
    .end local v2    # "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 289
    .restart local v2    # "handleState":Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, v2, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    .line 292
    invoke-direct {p0, v2}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->startTimerForPendingStat(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;)V

    .line 293
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
