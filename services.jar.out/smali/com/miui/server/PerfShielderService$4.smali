.class Lcom/miui/server/PerfShielderService$4;
.super Landroid/os/Handler;
.source "PerfShielderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/PerfShielderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/PerfShielderService;


# direct methods
.method constructor <init>(Lcom/miui/server/PerfShielderService;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/miui/server/PerfShielderService$4;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 233
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 238
    :goto_0
    return-void

    .line 235
    :pswitch_0
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$4;->this$0:Lcom/miui/server/PerfShielderService;

    # invokes: Lcom/miui/server/PerfShielderService;->bindService()V
    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->access$000(Lcom/miui/server/PerfShielderService;)V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
