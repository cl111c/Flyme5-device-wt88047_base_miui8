.class Lcom/fingerprints/service/GoodixFingerprintManager$1;
.super Lcom/fingerprints/service/IFingerprintClient$Stub;
.source "GoodixFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fingerprints/service/GoodixFingerprintManager;-><init>(Landroid/os/IBinder;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingerprints/service/GoodixFingerprintManager;


# direct methods
.method constructor <init>(Lcom/fingerprints/service/GoodixFingerprintManager;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/fingerprints/service/GoodixFingerprintManager$1;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    invoke-direct {p0}, Lcom/fingerprints/service/IFingerprintClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBundleMessage(IIILandroid/os/Bundle;)V
    .locals 2
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
    .line 288
    iget-object v1, p0, Lcom/fingerprints/service/GoodixFingerprintManager$1;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    iget-object v1, v1, Lcom/fingerprints/service/GoodixFingerprintManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 289
    .local v0, "mMessage":Landroid/os/Message;
    invoke-virtual {v0, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 290
    iget-object v1, p0, Lcom/fingerprints/service/GoodixFingerprintManager$1;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    iget-object v1, v1, Lcom/fingerprints/service/GoodixFingerprintManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    return-void
.end method

.method public onBundleMessage2(II[I)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "rect"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 304
    return-void
.end method

.method public onEnrolInfo([I)V
    .locals 4
    .param p1, "enrolInfo"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v2, p0, Lcom/fingerprints/service/GoodixFingerprintManager$1;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    iget-object v2, v2, Lcom/fingerprints/service/GoodixFingerprintManager;->mEventHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 296
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 297
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "enrolinfo"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 298
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 299
    iget-object v2, p0, Lcom/fingerprints/service/GoodixFingerprintManager$1;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    iget-object v2, v2, Lcom/fingerprints/service/GoodixFingerprintManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 300
    return-void
.end method

.method public onMessage(III)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 284
    return-void
.end method

.method public onMessage2(III[B)V
    .locals 2
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
    .line 279
    iget-object v0, p0, Lcom/fingerprints/service/GoodixFingerprintManager$1;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    iget-object v0, v0, Lcom/fingerprints/service/GoodixFingerprintManager;->mEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fingerprints/service/GoodixFingerprintManager$1;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    iget-object v1, v1, Lcom/fingerprints/service/GoodixFingerprintManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    return-void
.end method
