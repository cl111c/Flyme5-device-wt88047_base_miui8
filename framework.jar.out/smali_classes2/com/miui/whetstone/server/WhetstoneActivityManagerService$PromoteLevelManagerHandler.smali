.class final Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;
.super Landroid/os/Handler;
.source "WhetstoneActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PromoteLevelManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .line 476
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 477
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 481
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 494
    :goto_0
    return-void

    .line 483
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 484
    .local v0, "processName":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 485
    .local v1, "userId":I
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    # invokes: Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->releasePromoteLevelWithUserId(Ljava/lang/String;I)V
    invoke-static {v2, v0, v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->access$300(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Ljava/lang/String;I)V

    goto :goto_0

    .line 488
    .end local v0    # "processName":Ljava/lang/String;
    .end local v1    # "userId":I
    :pswitch_1
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    # invokes: Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->handleClearDeadAppFromNative()V
    invoke-static {v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->access$400(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    goto :goto_0

    .line 491
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Lcom/miui/whetstone/WhetstoneManager;->updateProcessCurrentPss(II)V

    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
