.class Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;
.super Landroid/os/Handler;
.source "GoodixFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/GoodixFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingerprints/service/GoodixFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/fingerprints/service/GoodixFingerprintManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    .line 184
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 185
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 189
    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->DEBUG:Z
    invoke-static {}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EventHandler: handleMessage what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " arg1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " arg2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 266
    :cond_1
    :goto_0
    return-void

    .line 192
    :sswitch_0
    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$200()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 193
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 194
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "enrolinfo"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 195
    .local v1, "enrolinfo":[I
    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$200()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "progress"

    aget v5, v1, v7

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$200()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "acceptance"

    aget v5, v1, v6

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$200()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "reject_reason"

    const/4 v5, 0x2

    aget v5, v1, v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$200()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "immobile"

    const/4 v5, 0x3

    aget v5, v1, v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    iget-object v3, p0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    # invokes: Lcom/fingerprints/service/GoodixFingerprintManager;->PackGuidedData()V
    invoke-static {v3}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$300(Lcom/fingerprints/service/GoodixFingerprintManager;)V

    goto :goto_0

    .line 205
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "enrolinfo":[I
    :sswitch_1
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 206
    .local v2, "enrollId":I
    const/16 v3, 0x75

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_2

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->DEBUG:Z
    invoke-static {}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EventHandler: no space for enroll"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_2
    iget-object v3, p0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v3}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$400(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 208
    if-lez v2, :cond_3

    iget-object v3, p0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v3}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$400(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onEnrolled(I)V

    goto :goto_0

    .line 209
    :cond_3
    iget-object v3, p0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v3}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$400(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onEnrollmentFailed()V

    goto :goto_0

    .line 214
    .end local v2    # "enrollId":I
    :sswitch_2
    iget-object v3, p0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v3}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$500(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 215
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 217
    :pswitch_0
    iget-object v3, p0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v3}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$500(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onInput()V

    goto/16 :goto_0

    .line 220
    :pswitch_1
    iget-object v3, p0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v3}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$500(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onCaptureCompleted()V

    .line 221
    iget-object v3, p0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v3}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$500(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onWaitingForInput()V

    goto/16 :goto_0

    .line 225
    :pswitch_2
    iget-object v3, p0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v3}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$500(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onCaptureFailed(I)V

    goto/16 :goto_0

    .line 231
    :sswitch_3
    iget-object v3, p0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v3}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$500(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 232
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    .line 234
    :pswitch_3
    iget-object v3, p0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v3}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$500(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onInput()V

    goto/16 :goto_0

    .line 237
    :pswitch_4
    iget-object v3, p0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v3}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$500(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onCaptureCompleted()V

    .line 238
    iget-object v3, p0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v3}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$500(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onWaitingForInput()V

    goto/16 :goto_0

    .line 242
    :pswitch_5
    iget-object v3, p0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v3}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$500(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onCaptureFailed(I)V

    goto/16 :goto_0

    .line 251
    :sswitch_4
    iget-object v3, p0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v3}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$600(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 252
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_2

    :pswitch_6
    goto/16 :goto_0

    .line 254
    :pswitch_7
    iget-object v3, p0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v3}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$600(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v7}, Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;->onIdentified(IZ)V

    goto/16 :goto_0

    .line 257
    :pswitch_8
    iget-object v3, p0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/GoodixFingerprintManager;

    # getter for: Lcom/fingerprints/service/GoodixFingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v3}, Lcom/fingerprints/service/GoodixFingerprintManager;->access$600(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;->onNoMatch()V

    goto/16 :goto_0

    .line 190
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_2
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_3
    .end sparse-switch

    .line 215
    :pswitch_data_0
    .packed-switch 0x7d4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 232
    :pswitch_data_1
    .packed-switch 0x7d4
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 252
    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method
