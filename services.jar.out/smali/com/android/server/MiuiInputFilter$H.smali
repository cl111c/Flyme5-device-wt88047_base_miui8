.class Lcom/android/server/MiuiInputFilter$H;
.super Landroid/os/Handler;
.source "MiuiInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final MSG_DOUBLE_CLICK_DELAY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/MiuiInputFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/MiuiInputFilter;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/MiuiInputFilter$H;->this$0:Lcom/android/server/MiuiInputFilter;

    .line 112
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 113
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 123
    return-void

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter$H;->this$0:Lcom/android/server/MiuiInputFilter;

    invoke-virtual {v0}, Lcom/android/server/MiuiInputFilter;->flushPending()V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
