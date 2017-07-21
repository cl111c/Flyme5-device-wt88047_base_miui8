.class Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid$1;
.super Ljava/util/TimerTask;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->startTimerForPendingStat(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid$1;->this$2:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid$1;->this$2:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->pauseSensorsForPending()V
    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;->access$300(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleStateByPid;)V

    .line 326
    return-void
.end method
