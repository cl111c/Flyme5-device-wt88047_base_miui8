.class Lcom/fingerprints/service/FpcFingerprintManager$1;
.super Lcom/fingerprints/service/IFingerprintClient$Stub;
.source "FpcFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fingerprints/service/FpcFingerprintManager;-><init>(Landroid/os/IBinder;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingerprints/service/FpcFingerprintManager;


# direct methods
.method constructor <init>(Lcom/fingerprints/service/FpcFingerprintManager;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/fingerprints/service/FpcFingerprintManager$1;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    invoke-direct {p0}, Lcom/fingerprints/service/IFingerprintClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBundleMessage(IIILandroid/os/Bundle;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arr"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 312
    const-string v1, "FpcFingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBundleMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/fingerprints/service/FpcFingerprintManager$1;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    iget-object v1, v1, Lcom/fingerprints/service/FpcFingerprintManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 314
    .local v0, "mMessage":Landroid/os/Message;
    invoke-virtual {v0, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 315
    iget-object v1, p0, Lcom/fingerprints/service/FpcFingerprintManager$1;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    iget-object v1, v1, Lcom/fingerprints/service/FpcFingerprintManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    return-void
.end method

.method public onBundleMessage2(II[I)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "rect"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 282
    const-string v1, "FpcFingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onBundleMessage2 rect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v1, p0, Lcom/fingerprints/service/FpcFingerprintManager$1;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    iget-object v1, v1, Lcom/fingerprints/service/FpcFingerprintManager;->mEventHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 284
    .local v0, "mMessage":Landroid/os/Message;
    packed-switch p1, :pswitch_data_0

    .line 305
    :goto_0
    iget-object v1, p0, Lcom/fingerprints/service/FpcFingerprintManager$1;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    iget-object v1, v1, Lcom/fingerprints/service/FpcFingerprintManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    return-void

    .line 287
    :pswitch_0
    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FpcFingerprintManager;->access$600()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lastTouch"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 288
    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FpcFingerprintManager;->access$600()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 293
    :pswitch_1
    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FpcFingerprintManager;->access$600()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "nextTouch"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 294
    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FpcFingerprintManager;->access$600()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 299
    :pswitch_2
    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FpcFingerprintManager;->access$600()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "maskList"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 300
    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FpcFingerprintManager;->access$600()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "maskNumber"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FpcFingerprintManager;->access$600()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onEnrolInfo([I)V
    .locals 0
    .param p1, "enrollInfo"    # [I

    .prologue
    .line 320
    return-void
.end method

.method public onMessage(III)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    const-string v0, "FpcFingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/fingerprints/service/FpcFingerprintManager$1;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    iget-object v0, v0, Lcom/fingerprints/service/FpcFingerprintManager;->mEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fingerprints/service/FpcFingerprintManager$1;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    iget-object v1, v1, Lcom/fingerprints/service/FpcFingerprintManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    return-void
.end method

.method public onMessage2(III[B)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 277
    const-string v0, "FpcFingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessage2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method
