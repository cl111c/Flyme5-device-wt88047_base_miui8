.class final Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HandleState"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mHandle:I

.field public mIsCalledByPower:Z

.field mMaxBatchReportLatencyNs:J

.field mOpByP:Z

.field public mPendSensor:Ljava/util/Timer;

.field mPendingOperation:Z

.field mReserve:I

.field mSamplingPeriodNs:J

.field mState:Z

.field public mTask:Ljava/util/TimerTask;

.field final synthetic this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 435
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mState:Z

    .line 437
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mHandle:I

    .line 438
    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mBinder:Landroid/os/IBinder;

    .line 439
    iput-wide v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mSamplingPeriodNs:J

    .line 440
    iput-wide v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mMaxBatchReportLatencyNs:J

    .line 441
    iput v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mReserve:I

    .line 442
    iput-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    .line 443
    iput-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    .line 444
    iput-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mIsCalledByPower:Z

    .line 445
    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendSensor:Ljava/util/Timer;

    .line 446
    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mTask:Ljava/util/TimerTask;

    .line 447
    return-void
.end method


# virtual methods
.method public clearTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 449
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 451
    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mTask:Ljava/util/TimerTask;

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendSensor:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendSensor:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 455
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendSensor:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 456
    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendSensor:Ljava/util/Timer;

    .line 458
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->clearTimer()V

    .line 462
    return-void
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 464
    const-string v0, " {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v0, " state = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 466
    const-string v0, " Handle = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mHandle:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    const-string v0, " binder = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 468
    const-string v0, " samp = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mSamplingPeriodNs:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 469
    const-string v0, " max = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mMaxBatchReportLatencyNs:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 470
    const-string v0, " reserv = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mReserve:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    const-string v0, " mOpByP = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 472
    const-string v0, " mPendingOperation = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 473
    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
