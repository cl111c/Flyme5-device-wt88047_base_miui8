.class Lcom/android/server/pm/MultiTaskDealer$2;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "MultiTaskDealer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/MultiTaskDealer;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/MultiTaskDealer;


# direct methods
.method constructor <init>(Lcom/android/server/pm/MultiTaskDealer;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 10
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # J
    .param p6, "x3"    # Ljava/util/concurrent/TimeUnit;
    .param p8, "x5"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 94
    .local p7, "x4":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcom/android/server/pm/MultiTaskDealer$2;->this$0:Lcom/android/server/pm/MultiTaskDealer;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/MultiTaskDealer$2;->this$0:Lcom/android/server/pm/MultiTaskDealer;

    # invokes: Lcom/android/server/pm/MultiTaskDealer;->taskCompleteNotify(Ljava/lang/Runnable;)V
    invoke-static {v0, p1}, Lcom/android/server/pm/MultiTaskDealer;->access$000(Lcom/android/server/pm/MultiTaskDealer;Ljava/lang/Runnable;)V

    .line 100
    const-string v0, "MultiTaskDealer"

    const-string v1, "end task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 104
    const-string v0, "MultiTaskDealer"

    const-string v1, "start task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method
