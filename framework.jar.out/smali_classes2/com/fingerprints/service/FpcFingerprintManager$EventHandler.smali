.class Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;
.super Landroid/os/Handler;
.source "FpcFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/FpcFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingerprints/service/FpcFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/fingerprints/service/FpcFingerprintManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    .line 117
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 118
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 122
    const-string v3, "FpcFingerprintManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 125
    :sswitch_0
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$000(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$000(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onWaitingForInput()V

    goto :goto_0

    .line 129
    :sswitch_1
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$000(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$000(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onInput()V

    goto :goto_0

    .line 133
    :sswitch_2
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$000(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$000(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onCaptureCompleted()V

    goto :goto_0

    .line 137
    :sswitch_3
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$000(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$000(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onCaptureFailed(I)V

    goto :goto_0

    .line 141
    :sswitch_4
    iget-object v3, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v3}, Lcom/fingerprints/service/FpcFingerprintManager;->access$100(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v3}, Lcom/fingerprints/service/FpcFingerprintManager;->access$100(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v2, :cond_1

    :goto_1
    invoke-interface {v3, v4, v2}, Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;->onIdentified(IZ)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 145
    :sswitch_5
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mHelperCallback:Lcom/fingerprints/service/FingerprintManager$HelperCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$200(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$HelperCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mHelperCallback:Lcom/fingerprints/service/FingerprintManager$HelperCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$200(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$HelperCallback;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/fingerprints/service/FingerprintManager$HelperCallback;->onIdentifiedExt(I)V

    goto :goto_0

    .line 149
    :sswitch_6
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$300(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$300(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onEnrolled(I)V

    goto/16 :goto_0

    .line 153
    :sswitch_7
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$300(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 157
    :sswitch_8
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$300(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # invokes: Lcom/fingerprints/service/FpcFingerprintManager;->PackGuidedData()V
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$400(Lcom/fingerprints/service/FpcFingerprintManager;)V

    goto/16 :goto_0

    .line 162
    :sswitch_9
    const-string v2, "FpcFingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEnrolCallback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v4}, Lcom/fingerprints/service/FpcFingerprintManager;->access$300(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$300(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 165
    .local v1, "tmpBundle":Landroid/os/Bundle;
    const-string v2, "lastTouch"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 166
    .local v0, "tmpArray":[I
    const-string v2, "FpcFingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tmpArray length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FpcFingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "lastTouch"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 172
    .end local v0    # "tmpArray":[I
    .end local v1    # "tmpBundle":Landroid/os/Bundle;
    :sswitch_a
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$300(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 174
    .restart local v1    # "tmpBundle":Landroid/os/Bundle;
    const-string v2, "nextTouch"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 175
    .restart local v0    # "tmpArray":[I
    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FpcFingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "nextTouch"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 180
    .end local v0    # "tmpArray":[I
    .end local v1    # "tmpBundle":Landroid/os/Bundle;
    :sswitch_b
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$300(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 182
    .restart local v1    # "tmpBundle":Landroid/os/Bundle;
    const-string v2, "maskList"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 183
    .restart local v0    # "tmpArray":[I
    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FpcFingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "maskList"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 184
    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FpcFingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "maskNumber"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 189
    .end local v0    # "tmpArray":[I
    .end local v1    # "tmpBundle":Landroid/os/Bundle;
    :sswitch_c
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$300(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 190
    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FpcFingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "acceptance"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FpcFingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "reject_reason"

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 195
    :sswitch_d
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$300(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 196
    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FpcFingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "stitched"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 200
    :sswitch_e
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$300(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 201
    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FpcFingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "immobile"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 205
    :sswitch_f
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$300(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 206
    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FpcFingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "next_direction"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 210
    :sswitch_10
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$300(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 211
    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FpcFingerprintManager;->access$500()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "progress"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 215
    :sswitch_11
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$100(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$100(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;->onNoMatch()V

    goto/16 :goto_0

    .line 219
    :sswitch_12
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$300(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FpcFingerprintManager;

    # getter for: Lcom/fingerprints/service/FpcFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FpcFingerprintManager;->access$300(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onEnrollmentFailed()V

    goto/16 :goto_0

    .line 123
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
        0x6 -> :sswitch_4
        0x7 -> :sswitch_11
        0x8 -> :sswitch_12
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_d
        0x13 -> :sswitch_3
        0x33 -> :sswitch_5
    .end sparse-switch
.end method
